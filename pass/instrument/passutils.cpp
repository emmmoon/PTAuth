#include <math.h>
#include <cstdint>
#include <string>
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/CallSite.h"
#include "passutils.h"
#include "ptauthTypes.h"
#include "config.h"


using namespace llvm;
using namespace std;

std::unordered_set <string> functionsAvoidList = {"__loadCheck", "__GEPCheck", "strlen", "__nestedGEPCheck","sqrt","exit",
                                             "llvm.dbg.declare","fgets","strstr","atol","__isoc99_sscanf","strncmp",
                                             "fprintf","fopen","fclose","fgetc","__isoc99_fscanf","printf","atoi","fwrite","fread",
                                             "llvm.memcpy.p0i8.p0i8.i64","strcmp","llvm.memset.p0i8.i64","sprintf","strcat",
                                             "llvm.va_start","llvm.va_end"};
std::unordered_set <string> globalVarsAvoidList = {"perm"};
std::unordered_set <string> typesAvoidList = {"syntaxelement","pix_pos","ImageParameters","SGFTree_t","Hash_data","storable_picture"};

string passutils::getString(llvm::Type *type) {
    std::string type_str;
    llvm::raw_string_ostream rso(type_str);
    type->print(rso);
    return rso.str();
}

void passutils::replaceFuncionWith(llvm::Function& func, const Twine & replace) {
    errs() << "Instrumentation of " << func.getName() << "\n";

    Function *custom_function = NULL;
    FunctionType *ft = func.getFunctionType();
    custom_function = Function::Create(ft, func.getLinkage());
    custom_function->copyAttributesFrom(&func);
    custom_function->setName(replace);
    Function *NF = custom_function;
    func.getParent()->getFunctionList().insert(func.getIterator(), NF); //在模块中插入替换函数

    int counter = 0;
    while (!func.use_empty()) {     //循环查找原函数的所有调用指令
        counter++;  
        CallSite CS(func.user_back());  
        std::vector<Value *> args(CS.arg_begin(), CS.arg_end());
        Instruction *call = CS.getInstruction();
        Instruction *New = CallInst::Create(NF, args, "", call);    //创建新的调用指令，调用函数变为替换函数

        if (!call->use_empty())     //这里不懂，调用函数的user是什么
            call->replaceAllUsesWith(New);  //进行替换

        call->getParent()->getInstList().erase(call);   //basicblock中去掉原来的调用指令，这步是退出循环的变化条件
    }
    errs() << counter  << " " << func.getName() <<" functions were replaced " << "\n";
}

void passutils::checkAlloc(llvm::LoadInst *LI, llvm::Instruction *I) {

    if(LI->getType()->isPointerTy()){

        if(AllocaInst *AI = dyn_cast<AllocaInst>(LI->getOperand(0))){
                for (auto& ptr : pointers) {

                    if(ptr.Operand1 == AI){

                        if(GetElementPtrInst *GEP = dyn_cast<GetElementPtrInst>(I)){

                            if (ptr.isPassedToFunctionBefore){
                                IRBuilder<> IRB2(LI);
                                Value *V = IRB2.CreateBitCast(LI->getOperand(0), VoidPtrTy);
                                V = IRB2.CreateCall(__loadCheck, {V});
                                Value *ii = IRB2.CreateBitCast(V, LI->getOperand(0)->getType());
                                LI->setOperand(0, ii);
                            }

                            else {
                                IRBuilder<> IRB2(LI);
                                Value* xpacedPointer = IRB2.CreateCall(__noCheck, {IRB2.CreateBitCast(LI->getOperand(0),VoidPtrTy)});
                                Value *ii = IRB2.CreateBitCast(xpacedPointer, LI->getOperand(0)->getType());
                                LI->setOperand(0, ii);
                            }
                        }

                        if(LoadInst *LI2 = dyn_cast<LoadInst>(I)){

                            if (ptr.isPassedToFunctionBefore){
                                IRBuilder<> IRB2(LI);
                                Value *V = IRB2.CreateBitCast(LI->getOperand(0), VoidPtrTy);
                                V = IRB2.CreateCall(__loadCheck, {V});
                                Value *ii = IRB2.CreateBitCast(V, LI->getOperand(0)->getType());
                                LI->setOperand(0, ii);
                            }

                            else {
                                IRBuilder<> IRB2(LI);
                                Value* xpacedPointer = IRB2.CreateCall(__noCheck, {IRB2.CreateBitCast(LI->getOperand(0),VoidPtrTy)});
                                Value *ii = IRB2.CreateBitCast(xpacedPointer, LI->getOperand(0)->getType());
                                LI->setOperand(0, ii);
                            }
                        }

                        if(StoreInst *SI = dyn_cast<StoreInst>(I)){
                            //ptr.printProperties();
                            if (ptr.isPassedToFunctionBefore){

                                Value *V = SI->getOperand(1);
                                IRBuilder<> IRB(SI);
                                V = IRB.CreateBitCast(V, VoidPtrTy);
                                Value *striped = IRB.CreateCall(__storeCheck, {V});
                                Value *bc = IRB.CreateBitCast(striped, SI->getOperand(1)->getType());
                                SI->setOperand(1, bc);
                            }

                            else {
                                IRBuilder<> IRB2(SI);
                                Value* xpacedPointer = IRB2.CreateCall(__noCheck, {IRB2.CreateBitCast(SI->getOperand(1),VoidPtrTy)});
                                Value *ii = IRB2.CreateBitCast(xpacedPointer, SI->getOperand(1)->getType());
                                SI->setOperand(1, ii);
                            }

                        }
                }

            }

        }
        else {

            if(StoreInst *SI = dyn_cast<StoreInst>(I)){
                IRBuilder<> IRB2(SI);
                Value* xpacedPointer = IRB2.CreateCall(__noCheck, {IRB2.CreateBitCast(SI->getOperand(1),VoidPtrTy)});
                Value *ii = IRB2.CreateBitCast(xpacedPointer, SI->getOperand(1)->getType());
                SI->setOperand(1, ii);
            }
            if(GetElementPtrInst *GEP = dyn_cast<GetElementPtrInst>(I)){

            }
        }

    }
}

void passutils::instrumentStore(llvm::StoreInst* SI){

    string str = passutils::getString(SI->getOperand(0)->getType());


    // To find all the pointers in the current stack frame
    if (AllocaInst *AI = dyn_cast<AllocaInst>(SI->getOperand(1))){  //SI的第二个参数是allocInst类型就说明从数组或者结构开头开始写入
        if(CallInst *CI = dyn_cast<CallInst>(SI->getOperand(0)->stripPointerCasts())){
            string callfuncname = CI->getCalledFunction()->getName(); 
            if((callfuncname.find("malloc") != std::string::npos || callfuncname.find("realloc") != std::string::npos || callfuncname.find("calloc") != std::string::npos) && str.find("_IO_FILE")==std::string::npos){
                int isIP = 0;
                for (auto &ptr : pointers){
                    if(ptr.Operand1 == AI){
                        ptr.Numuse = AI->getNumUses();
                        ptr.Operand0 = SI->getOperand(0);
                        ptr.isPassedToFunctionBefore = false;
                        ptr.isCheckedBefore = false;
                        isIP = 1;

                        break;
                    }
                }

                if(!(isIP)){
                    pointerProperties pointer;
                    pointer.Numuse = AI->getNumUses();
                    pointer.Operand0 = SI->getOperand(0);
                    pointer.Operand1 = SI->getOperand(1);
                    pointer.isPassedToFunctionBefore = false;
                    pointer.isCheckedBefore = false;
                    //pointer.printProperties();

                    pointers.push_back(pointer);
                }
            }
        }
        if(LoadInst *LI = dyn_cast<LoadInst>(SI->getOperand(0)->stripPointerCasts())){
            if(AllocaInst *AI2 = dyn_cast<AllocaInst>(LI->getOperand(0))){
                if(AI->getType() == AI2->getType()){
                    for (auto &ptr : pointers){
                        if(ptr.Operand1 == AI2){
                            pointerProperties pointer;
                            pointer.Numuse = ptr.Numuse;
                            pointer.Operand0 = ptr.Operand0;
                            pointer.Operand1 = AI;
                            pointer.isPassedToFunctionBefore = ptr.isPassedToFunctionBefore;
                            pointer.isCheckedBefore = ptr.isCheckedBefore;

                            pointers.push_back(pointer);
                        }
                    }                    
                }
            }
        }
    }

    // Checks moved to passutils::instrumentLoad 为什么Store不需要check了
    return;

    if(isa<GlobalVariable>(SI->getOperand(0))){
        // Aliasing of Global Variables can be handled here
        //errs() << "SI is global = " << *SI << "\n";
    }


    // Check whether a pointer is passed to the function as an argument.
    // The argument is copied to a temporary variable
    // Ignore FILE* poiners
    if(dyn_cast<Argument>(SI->getOperand(0))
       && SI->getOperand(0)->getType()->isPtrOrPtrVectorTy()
       && str.find("_IO_FILE")==std::string::npos) {

//                        Value *V = SI->getOperand(0);
//                        IRBuilder<> IRB2(SI);
//                        V = IRB2.CreateBitCast(V, VoidPtrTy);
//                        V = IRB2.CreateCall(__loadCheck, {V});
//                        Value *ii = IRB2.CreateBitCast(V, SI->getOperand(0)->getType());
//                        SI->setOperand(0, ii);
//                       // errs () << "It is argument finished! = "  << *SI->getOperand(0) << "\n";
    }

    else {
        Value *V = SI->getOperand(1);
        // storing via the pointer -- They contains signatures -- need to be stripped off before storing

        if (LoadInst *LI= dyn_cast<LoadInst>(SI->getOperand(1))) {

            string str = passutils::getString(LI->getOperand(0)->getType());
            if(SI->getType()->isPointerTy() && str.find("_IO_FILE")==std::string::npos) {
                passutils::checkAlloc(LI,SI);
            }
        } // End of store to a pointer

        // storing via a pointer of GEP
        if (GetElementPtrInst* GEP= dyn_cast<GetElementPtrInst>(SI->getOperand(1))) {
            IRBuilder<> IRB2(SI);
            Value* xpacedPointer = IRB2.CreateCall(__noCheck, {IRB2.CreateBitCast(SI->getOperand(1),VoidPtrTy)});
            Value *ii = IRB2.CreateBitCast(xpacedPointer, SI->getOperand(1)->getType());
            SI->setOperand(1, ii);

            if(LoadInst* LI = dyn_cast<LoadInst>(GEP->getOperand(0))){

                passutils::checkAlloc(LI, GEP);

            }
        }

    }
    isPrevAlloca = false;
}

void passutils::instrumentCalls(llvm::CallInst* CI) {

    std::unordered_set <string> xpacedList = {"read"}; // TBI is not compatible with read()
    std::unordered_set <string> localAvoidList = {"llvm.dbg.declare", "fprintf", "__ptauth_free", "__ptauth_malloc", "__ptauth_realloc", "__ptauth_calloc",
                                                  "fopen","__xPAC","initMD","__validatePointer","__loadCheck","__GEPCheck","__nestedGEPCheck"};

    // TODO: Handle indirect calls to free()
    if (CI->getCalledFunction() && CI->getCalledFunction()->getName() == "__ptauth_free"){
        // free function is called here
        // since it is hard to track all the pointers and their aliases, we assume we need to disable
        // optimization from this pointer forward
        int numParams = CI->getNumArgOperands();
        for (int i = 0; i <numParams ; ++i) {
            string str = passutils::getString(CI->getOperand(i)->getType());
            
            if (CI->getOperand(i)->getType()->isPointerTy() && str.find("_IO_FILE")==std::string::npos) {
                if (LoadInst *LI = dyn_cast<LoadInst>(CI->getOperand(i)->stripPointerCasts())) {
                    if (AllocaInst *AI = dyn_cast<AllocaInst>(LI->getOperand(0))) {
                        Value *operand_0;
                        for (auto &ptr : pointers) {
                            if (ptr.Operand1 == AI) {
                                operand_0 = ptr.Operand0;
                            }
                        }
                        for (auto &ptr : pointers) {
                            if (ptr.Operand0 == operand_0) {
                                ptr.isPassedToFunctionBefore = true;
                                ptr.isCheckedBefore = false;
                            }
                        }                                                
                    }
                }
            }
        }        
        return;
    }

    if(CI->getCalledFunction() && CI->getCalledFunction()->getName() == "__ptauth_realloc"){
        for(auto arg_size = CI->arg_begin(); arg_size != CI->arg_end(); ++arg_size){
            if(auto val = dyn_cast<ConstantInt>(arg_size))
                if(val->getZExtValue() == 0){
                    int numParams = CI->getNumArgOperands();
                    for (int i = 0; i <numParams ; ++i) {
                        string str = passutils::getString(CI->getOperand(i)->getType());
                        
                        if (CI->getOperand(i)->getType()->isPointerTy() && str.find("_IO_FILE")==std::string::npos) {
                            if (LoadInst *LI = dyn_cast<LoadInst>(CI->getOperand(i)->stripPointerCasts())) {
                                if (AllocaInst *AI = dyn_cast<AllocaInst>(LI->getOperand(0))) {
                                    Value *operand_0;
                                    for (auto &ptr : pointers) {
                                        if (ptr.Operand1 == AI) {
                                            operand_0 = ptr.Operand0;
                                        }
                                    }
                                    for (auto &ptr : pointers) {
                                        if (ptr.Operand0 == operand_0) {
                                            ptr.isPassedToFunctionBefore = true;
                                            ptr.isCheckedBefore = false;
                                        }
                                    }                         
                                }
                            }
                        }
                    }        
                return;
            }
        }
    }

    if (CI->getCalledFunction() && (CI->getCalledFunction()->isDeclaration()) &&
        (localAvoidList.count(CI->getCalledFunction()->getName())==0) ) { // For external functions detection
        Function* fn = CI->getCalledFunction();
        int numParams = CI->getNumArgOperands();

        for (int i = 0; i <numParams ; ++i) {
            string str = passutils::getString(CI->getOperand(i)->getType());

            if (CI->getOperand(i)->getType()->isPointerTy() && str.find("_IO_FILE")==std::string::npos) {

                if (Constant *Co = dyn_cast<Constant>(CI->getOperand(i))) { // Ignore Constant strings
                    continue;
                } // end of Constant

                if (BitCastInst *BC = dyn_cast<BitCastInst>(CI->getOperand(i))) {

                    if (AllocaInst *AllI = dyn_cast<AllocaInst>(BC->getOperand(0)) ){

                    }
                }

                if (GetElementPtrInst *GEP = dyn_cast<GetElementPtrInst>(CI->getOperand(i))) { //GEP
                    if (AllocaInst *AllI = dyn_cast<AllocaInst>(GEP->getOperand(0)) ){
                        continue;
                    }
                }

#if(TOPBYTEIGNORE == 0)
                int isFunctionTyFlag= CI->getOperand(i)->getType()->getPointerElementType()->isFunctionTy();
                IRBuilder<> IRB2(CI);
                Value *xpacedPointer;
                if(isFunctionTyFlag){
                    xpacedPointer = IRB2.CreateCall(__xpac, {IRB2.CreateBitCast(CI->getOperand(i),VoidPtrTy)});
                }
                else {
                    //errs() << "CI->getCalledFunction()->getType() " << CI->getCalledFunction() << "\n";
                    // Optimization for removing IO_FILE should be added here
                    xpacedPointer = IRB2.CreateCall(__xpac, {IRB2.CreateBitCast(CI->getOperand(i),VoidPtrTy)});
                }

                if(CI->getOperand(i)->getType() != VoidPtrTy){
                    Value *bitCast = IRB2.CreateBitCast(xpacedPointer, CI->getOperand(i)->getType());
                    CI->setOperand(i, bitCast);
                }

                else
                    CI->setOperand(i, xpacedPointer);
#else
                if (xpacedList.count(CI->getCalledFunction()->getName())>0) {
                    int isFunctionTyFlag= CI->getOperand(i)->getType()->getPointerElementType()->isFunctionTy();
                    IRBuilder<> IRB2(CI);
                    Value *xpacedPointer;
                    if(isFunctionTyFlag){
                        xpacedPointer = IRB2.CreateCall(__xpac, {IRB2.CreateBitCast(CI->getOperand(i),VoidPtrTy)});
                    }
                    else {
                        xpacedPointer = IRB2.CreateCall(__xpac, {IRB2.CreateBitCast(CI->getOperand(i),VoidPtrTy)});
                    }
                    //这两个有区别吗
                    if(CI->getOperand(i)->getType() != VoidPtrTy){
                        Value *bitCast = IRB2.CreateBitCast(xpacedPointer, CI->getOperand(i)->getType());
                        CI->setOperand(i, bitCast);
                    }

                    else
                        CI->setOperand(i, xpacedPointer);
                }
                
#endif

            } // End of pointer detection in parameters
        } // End of loop for the number of parameters
    } // End of if for detection of external functions

    if( CI->getCalledFunction() && functionsAvoidList.count(CI->getCalledFunction()->getName())==0){
        int numParams = CI->getNumArgOperands();
        int flagPointer=0;

        for (int i = 0; i <numParams ; ++i) {
            string str = passutils::getString(CI->getOperand(i)->getType());

            if (CI->getOperand(i)->getType()->isPointerTy() && str.find("_IO_FILE")==std::string::npos) {
                InternalCall = 1;
                GEPS.clear();
                if (LoadInst *LI = dyn_cast<LoadInst>(CI->getOperand(i)->stripPointerCasts())) {
                    if (AllocaInst *AI = dyn_cast<AllocaInst>(LI->getOperand(0))) { //调用函数时读了指针指向的值，但是这里为什么要单独列出来，按理来说不是之前已经有过load指令了吗

                        int isChecked = 0;
                        int isAllocaed = 0;
                        for (auto &ptr : pointers) {
                            if (ptr.Operand1 == AI) {
                                isAllocaed = 1;
                                if (ptr.isCheckedBefore) {
                                    isChecked = 1;  //前面已经check过就不用check了
                                }
                                break;
                            }
                        }

                        if (!isChecked && isAllocaed) {
                            IRBuilder<> IRB2(CI);
                            Value * V = IRB2.CreateBitCast(LI, VoidPtrTy);
                            V = IRB2.CreateCall(__loadCheck, {V});
                            
                            Value *operand_0;
                            for (auto &ptr : pointers) {
                                if (ptr.Operand1 == AI) {
                                    operand_0 = ptr.Operand0;
                                    break;
                                }
                            }
                            for (auto &ptr : pointers) {
                                if (ptr.Operand0 == operand_0) {
                                    ptr.isPassedToFunctionBefore = true;
                                    ptr.isCheckedBefore = false;
                                }
                            }
                       }
                    }
                }

                // if (BitCastInst *BI = dyn_cast<BitCastInst>(CI->getOperand(i))) {

                //     if (LoadInst *LI = dyn_cast<LoadInst>(BI->getOperand(0))) {

                //         if (LI = dyn_cast<LoadInst>(LI->getOperand(0))) {      //类型转换之后的指针指向元素，为什么这里不用判断是否之前check过()

                //             if (AllocaInst *AI = dyn_cast<AllocaInst>(LI->getOperand(0))) {
                //                 IRBuilder<> IRB2(CI);
                //                 Value * V = IRB2.CreateBitCast(LI, VoidPtrTy);
                //                 V = IRB2.CreateCall(__loadCheck, {V});

                //                 for (auto &ptr : pointers) {
                //                     if (ptr.Operand1 == AI) {
                //                         ptr.isPassedToFunctionBefore = true;
                //                         break;
                //                     }
                //                 }
                //             }
                //         }
                //     } // end load
                // }

                else {
                    //errs() << "CI->getOperand(i) is not loading AllocaInst " << *CI->getOperand(i) << "\n";
                }

            }
        }
    }    
}

void passutils::instrumentAlloc(llvm::AllocaInst *AI) {
    isPrevAlloca = true;    //进行了alloca操作？
    prevAI = AI;    //alloca指令

    if(AI->getAllocatedType()->isPointerTy()) {

    }

    if (auto *NEXT = dyn_cast<AllocaInst>(AI->getNextNode())) {

    }
    else {
        allocaFinished = true;
    }
}

void passutils::instrumentReturn(llvm::ReturnInst *RI) {
    isPrevAlloca = false;      //函数返回需要释放空间

    GlobalObjectsArrSize=0;
    GlobalObjectsArr[100]={0};

    FlagFreeCalled = 0;
    pointers.clear();   //函数返回都置为0

}

void passutils::instrumentGEP(llvm::GetElementPtrInst *GEP) {

    // checks and optimization were moved to "passutils::instrumentLoad" method
    // Therefore, we return here.
    return;
/*
    Value *V = GEP->getOperand(0);
    // When a pointer is passed to GEP, it should be stripped.
    // This only works for local pointers, not the global pointers.
    if (LoadInst *LI = dyn_cast<LoadInst>(GEP->getOperand(0))) {
        if(LI->getType()->isPointerTy()){
            int flagGlobal=0;
            for(int i = 0; i < GlobalObjectsArrSize; i++){
                if(GlobalObjectsArr[i] == LI->getOperand(0)){
                    flagGlobal=1;
                    break;
                }
            }

            if(AllocaInst *AI = dyn_cast<AllocaInst>(LI->getOperand(0))){
                for (auto& ptr : pointers) {
                    if(ptr.Operand1 == AI){
                        if (ptr.isPassedToFunctionBefore){
                            IRBuilder<> IRB2(GEP);
                            Value *V = GEP->getOperand(0);
                            V = IRB2.CreateBitCast(V, VoidPtrTy);
                            V = IRB2.CreateCall(__loadCheck, {V});
                            Value *ii = IRB2.CreateBitCast(V, GEP->getOperand(0)->getType());
                            GEP->setOperand(0, ii);
                        }

                        else {
                            IRBuilder<> IRB2(GEP);
                            Value* xpacedPointer = IRB2.CreateCall(__noCheck, {IRB2.CreateBitCast(GEP->getOperand(0),VoidPtrTy)});
                            Value *ii = IRB2.CreateBitCast(xpacedPointer, GEP->getOperand(0)->getType());
                            GEP->setOperand(0, ii);
                        }
                    }

                }

            }
            else if ( !passutils::isPointerToPointer(LI->getOperand(0))) {
                IRBuilder<> IRB2(GEP);
                Value *V = GEP->getOperand(0);
                V = IRB2.CreateBitCast(V, VoidPtrTy);
                V = IRB2.CreateCall(__loadCheck, {V});
                Value *ii = IRB2.CreateBitCast(V, GEP->getOperand(0)->getType());
                GEP->setOperand(0, ii);
            }

        }

    }
*/

}

void passutils::instrumentCMP(llvm::CmpInst *) {
    // Placeholder for instrumenting CMPs
}

bool passutils::isPointerToPointer(const llvm::Value *V) {
    const Type* T = V->getType();
    return T->isPointerTy() && T->getContainedType(0)->isPointerTy();
}

void passutils::instrumentLoad(llvm::LoadInst *LI) {

    string str = passutils::getString(LI->getOperand(0)->getType());

        if(LI->getType()->isPointerTy() && str.find("_IO_FILE")==std::string::npos) {
            //这个传进来的LI类型不就是指针
            str = passutils::getString(LI->getOperand(0)->getType());
            string structType="";
            if (str.find("struct")!= std::string::npos){

                structType = str.substr(str.find(".") + 1, str.find("*")-str.find(".")-1);  //*是什么
                //errs() << "LI->getOperand(0)->getType() = " << *LI->getOperand(0)->getType() << "\n";
                //errs() << "structType is = " << structType << "\n";
            }


            if (globalVarsAvoidList.count(LI->getOperand(0)->getName()) == 0 && typesAvoidList.count(structType) == 0) {
                if (LoadInst *LI2 = dyn_cast<LoadInst>(LI->getOperand(0))) {
                    if (AllocaInst *AI = dyn_cast<AllocaInst>(LI2->getOperand(0))) {
                        Value *operand_0;
                        int isPToHeap = 0;
                        for (auto &ptr : pointers) {
                            if (ptr.Operand1 == AI) {

                                if (ptr.isPassedToFunctionBefore) {
                                    IRBuilder<> IRB2(LI);
                                    Value * V = IRB2.CreateBitCast(LI->getOperand(0), VoidPtrTy);
                                    V = IRB2.CreateCall(__loadCheck, {V});
                                    Value * ii = IRB2.CreateBitCast(V, LI->getOperand(0)->getType());
                                    LI->setOperand(0, ii);  //为什么有这么一步操作
                                    operand_0 = ptr.Operand0;
                                    isPToHeap = 1;
                                } else {
                                    IRBuilder<> IRB2(LI);
                                    Value * xpacedPointer = IRB2.CreateCall(__noCheck,{IRB2.CreateBitCast(LI->getOperand(0),VoidPtrTy)});
                                    Value * ii = IRB2.CreateBitCast(xpacedPointer, LI->getOperand(0)->getType());
                                    LI->setOperand(0, ii);
                                }
                            }
                        }
                        if(isPToHeap){
                        for (auto &ptr : pointers) {
                            if (ptr.Operand0 == operand_0) {
                                ptr.isPassedToFunctionBefore = false;
                                ptr.isCheckedBefore = true;
                                }
                            }
                        }
                    }
                    if (isa<GlobalVariable>(LI2->getOperand(0))) {
                        IRBuilder<> IRB2(LI);
                        Value * V = IRB2.CreateBitCast(LI->getOperand(0), VoidPtrTy);
                        V = IRB2.CreateCall(__loadCheck, {V});
                        Value * ii = IRB2.CreateBitCast(V, LI->getOperand(0)->getType());
                        LI->setOperand(0, ii);
                    }
                }

                if (LI->hasNUsesOrMore(1)){
                    if (dyn_cast<GetElementPtrInst>(LI->user_back()) && isa<GlobalVariable>(LI->getOperand(0))){
                        GetElementPtrInst *GEP = dyn_cast<GetElementPtrInst>(LI->user_back());
                        
                        IRBuilder<> IRB2(GEP);
                        Value *V = GEP->getOperand(0);
                        V = IRB2.CreateBitCast(V, VoidPtrTy);
                        V = IRB2.CreateCall(__GEPCheck, {V});
                        Value *ii = IRB2.CreateBitCast(V, GEP->getOperand(0)->getType());
                        GEP->setOperand(0, ii);                        
                    }

                    if (dyn_cast<GetElementPtrInst>(LI->user_back()) && !isa<GlobalVariable>(LI->getOperand(0))){
                        if (Constant *Co = dyn_cast<Constant>(LI->getOperand(0))) {
                           // errs() << "LI is a constant" << *LI->getOperand(0) << "\n";
                        }

                        GetElementPtrInst *GEP = dyn_cast<GetElementPtrInst>(LI->user_back());

                        if (AllocaInst *AI = dyn_cast<AllocaInst>(LI->getOperand(0))) {
                            //errs() << "Gep from a Load and Alloc " << *AI << "\n";
                            Value *operand_0;
                            int isPToHeap = 0;

                            for (auto &ptr : pointers) {

                                if (ptr.Operand1 == AI) {

                                    if (ptr.isPassedToFunctionBefore == true) { //不懂这个判断其实就是被free

                                        IRBuilder<> IRB2(GEP);
                                        Value *V = GEP->getOperand(0);
                                        V = IRB2.CreateBitCast(V, VoidPtrTy);
                                        V = IRB2.CreateCall(__GEPCheck, {V});
                                        Value *ii = IRB2.CreateBitCast(V, GEP->getOperand(0)->getType());
                                        GEP->setOperand(0, ii);

                                        isPToHeap = 1;
                                        operand_0 = ptr.Operand0;
                                        break;
                                    } else {
                                        // no check
                                    }
                                }
                            }
                            if(isPToHeap){
                                for (auto &ptr : pointers){
                                    if (ptr.Operand0 == operand_0){
                                        ptr.isPassedToFunctionBefore = false;
                                        ptr.isCheckedBefore = true;
                                    }
                                }
                            }
                        }

                        if (GetElementPtrInst *GI2 = dyn_cast<GetElementPtrInst>(LI->getOperand(0))) {
                            //
                            int oneNestedInstrument = 0;
                            if (CallInst *CI = dyn_cast<CallInst>(GI2->getOperand(0)->stripPointerCasts())) {
                                if (CI->getCalledFunction() && CI->getCalledFunction()->getName()=="__nestedGEPCheck"){
                                    oneNestedInstrument = 1;
                                }

                            }

                            if (globalVarsAvoidList.count(GI2->getOperand(0)->getName()) == 0 && !oneNestedInstrument) {

                                    IRBuilder<> IRB2(GEP);
                                    Value * V = GEP->getOperand(0);
                                    V = IRB2.CreateBitCast(V, VoidPtrTy);
                                    V = IRB2.CreateCall(__nestedGEPCheck, {V});
                                    Value * ii = IRB2.CreateBitCast(V, GEP->getOperand(0)->getType());
                                    GEP->setOperand(0, ii);

                            } // end of avoid global vars

                        }

                    }
            }
        }

    }
    isPrevAlloca = false;
}

void passutils::optimizer(llvm::Function& F) {
    //errs() << F.getName() <<" from optimizer \n";

    InternalCall = 0;
    GlobalPointer = 0;
    NestedPointer = 0;
    FlagFreeCalled = 0;

    for (auto &B : F) {
        for (auto &I : B) {
            if (CallInst *CI = dyn_cast<CallInst>(&I)) {

                // TODO: Handle indirect calls to free()
                if (CI->getCalledFunction() && CI->getCalledFunction()->getName() == "__ptauth_free"){
                    //errs() << "__ptauth_free" << "\n";
                    FlagFreeCalled = 1 ;
                }

                if(CI->getCalledFunction() && CI->getCalledFunction()->getName() == "__ptauth_realloc"){
                    for(auto arg_size = CI->arg_begin(); arg_size != CI->arg_end(); ++arg_size){
                        if(auto val = dyn_cast<ConstantInt>(arg_size))
                            if(val->getZExtValue() == 0){
                                FlagFreeCalled = 1;
                                break;
                        }
                    }
                }

                if( CI->getCalledFunction() && functionsAvoidList.count(CI->getCalledFunction()->getName())==0){
                    int numParams = CI->getNumArgOperands();
                    int flagPointer=0;
                    for (int i = 0; i <numParams ; ++i) {
                        string str = passutils::getString(CI->getOperand(i)->getType());
                        if (CI->getOperand(i)->getType()->isPointerTy() && str.find("_IO_FILE")==std::string::npos) {
                            InternalCall = 1;
                        }
                    }
                }

            }

            else if (LoadInst *LI = dyn_cast<LoadInst>(&I)) {
                string str = passutils::getString(LI->getOperand(0)->getType());

                if(LI->getType()->isPointerTy() && str.find("_IO_FILE")==std::string::npos) {
                    if (isa<GlobalVariable>(LI->getOperand(0))) {
                        //errs() << "LI from a global pointer" << *LI << "\n";
                        GlobalPointer = 1;
                    }

                }

                if (LI->hasNUsesOrMore(1)){
                    if (GetElementPtrInst *GEP = dyn_cast<GetElementPtrInst>(LI->user_back())){ //Load的最后一个User是GetElementPtrInst指令即访问数组或者结构的元素
                        if (GetElementPtrInst *GI2 = dyn_cast<GetElementPtrInst>(LI->getOperand(0))) {  //Load指令所load的参数也是GetElementPtrInst即load是从数组或者结构中获取元素
                            NestedPointer = 1;
                        }
                    }
                }

            }
        }
    }

    if (!InternalCall && !GlobalPointer && !NestedPointer && !FlagFreeCalled){
        //errs() << "" << F.getName() << "\n";
        //errs() << "\t no internal call" << "\n";
        //errs() << "\t no Global pointer" << "\n";
        //errs() << "\t no Nested pointer" << "\n";
        optimizedList.insert (F.getName());
        //continue;
        // can be added to avoidList
    }

}