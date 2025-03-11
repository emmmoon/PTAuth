; ModuleID = 'extfunc_optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64--linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Metadata = type { i64 }
%struct.person = type { i8*, i32, i64 }

@MASKHIGHBIT = global i64 -281474976710656, align 8
@MASKLOWBIT = global i64 281474976710655, align 8
@MASK7BITS = global i64 255, align 8
@NestedGEPHasSignature = global i64 0, align 8
@NestedGEPHasNoSignature = global i64 0, align 8
@GEPHasSignature = global i64 0, align 8
@GEPHasNoSignature = global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Your OS does not support Top-Byte Ignore.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Pointer is 0x20000000000000 !\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"\09****** __ptauth_free! Pointer is not Valid! ****** \0A\00", align 1
@file = global %struct._IO_FILE* null, align 8
@arrayStartAddress = global [100 x i64] zeroinitializer, align 8
@arrayEndAddress = global [100 x i64] zeroinitializer, align 8
@arrayAddress = global [100 x i64] zeroinitializer, align 8
@address_start = global i64 0, align 8
@address_end = global i64 0, align 8
@arrayAddressLength = global i32 0, align 4
@initialized_address = global i32 0, align 4
@readonly = global i32 0, align 4
@globalVar = global i32 0, align 4
@filename = global [30 x i8] zeroinitializer, align 1
@cnt = global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"/proc/%d/maps\00", align 1
@.str.1.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2.5 = private unnamed_addr constant [5 x i8] c"heap\00", align 1
@.str.3.6 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Lineeee is = %s \0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%llx\0A \00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Person ID is = %ld \0A\00", align 1
@.str.1.14 = private unnamed_addr constant [21 x i8] c"Person age is = %d \0A\00", align 1
@.str.2.15 = private unnamed_addr constant [86 x i8] c"Dereferencing p dangling pointer. PTAuth should terminate the program at this point.\0A\00", align 1
@.str.3.16 = private unnamed_addr constant [74 x i8] c"Free a freed pointer. PTAuth should terminate the program at this point.\0A\00", align 1
@.str.4.17 = private unnamed_addr constant [79 x i8] c"Invalid free of a pointer. PTAuth should terminate the program at this point.\0A\00", align 1
@.str.5.18 = private unnamed_addr constant [34 x i8] c"Usage: ./stest.arm.elf [OPTIONS]\0A\00", align 1
@.str.6.19 = private unnamed_addr constant [56 x i8] c"./stest.arm.elf uaf     Trigger the Use-After-Free bug\0A\00", align 1
@.str.7.20 = private unnamed_addr constant [53 x i8] c"./stest.arm.elf df      Trigger the Double-Free bug\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"./stest.arm.elf if      Trigger the Invalid-Free bug\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"uaf\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"if\00", align 1

; Function Attrs: noinline nounwind optnone
define i32 @checkTBI() #0 {
  %1 = call i32 (i32, ...) @prctl(i32 55, i64 1, i32 0, i32 0, i32 0) #7
  %2 = icmp ne i32 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind
declare i32 @prctl(i32, ...) #1

; Function Attrs: alwaysinline nounwind
define i8* @backward_search(i8*, %struct.Metadata*, i8) #2 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.Metadata*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.Metadata* %1, %struct.Metadata** %6, align 8
  store i8 %2, i8* %7, align 1
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @__xpac(i8* %15)
  store i8* %16, i8** %9, align 8
  store i64 9223372036854775807, i64* %10, align 8
  store i64 1024, i64* %10, align 8
  store i32 1, i32* %11, align 4
  br label %17

; <label>:17:                                     ; preds = %76, %3
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %10, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %79

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %9, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %24, %26
  %28 = srem i64 %27, 16
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

; <label>:30:                                     ; preds = %22
  %31 = load i8*, i8** %9, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %32, %34
  %36 = srem i64 %35, 16
  %37 = sub nsw i64 %36, 1
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  br label %76

; <label>:42:                                     ; preds = %22
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr i8, i8* %43, i64 %46
  %48 = getelementptr i8, i8* %47, i64 8
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr i8, i8* %49, i64 %52
  %54 = bitcast i8* %53 to %struct.Metadata*
  store %struct.Metadata* %54, %struct.Metadata** %6, align 8
  %55 = load %struct.Metadata*, %struct.Metadata** %6, align 8
  %56 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %12, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i8, i8* %7, align 1
  %61 = call i8* @__autia(i8* %58, i64 %59, i8 %60)
  store i8* %61, i8** %13, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

; <label>:64:                                     ; preds = %42
  %65 = load i8*, i8** %13, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %75

; <label>:67:                                     ; preds = %64
  %68 = load i8, i8* %7, align 1
  %69 = zext i8 %68 to i32
  switch i32 %69, label %72 [
    i32 76, label %70
    i32 83, label %71
  ]

; <label>:70:                                     ; preds = %67
  br label %73

; <label>:71:                                     ; preds = %67
  br label %73

; <label>:72:                                     ; preds = %67
  br label %73

; <label>:73:                                     ; preds = %72, %71, %70
  %74 = load i8*, i8** %9, align 8
  store i8* %74, i8** %4, align 8
  br label %81

; <label>:75:                                     ; preds = %64, %42
  br label %76

; <label>:76:                                     ; preds = %75, %30
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %17

; <label>:79:                                     ; preds = %17
  %80 = load i8*, i8** %5, align 8
  store i8* %80, i8** %4, align 8
  br label %81

; <label>:81:                                     ; preds = %79, %73
  %82 = load i8*, i8** %4, align 8
  ret i8* %82
}

; Function Attrs: alwaysinline nounwind
define i8* @__noCheck(i8*) #2 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone
define void @initMD(%struct.Metadata*, i32) #0 {
  %3 = alloca %struct.Metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.Metadata* %0, %struct.Metadata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @time(i64* null) #7
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #7
  %8 = call i32 @rand() #7
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = shl i64 %10, 32
  %12 = call i32 @rand() #7
  %13 = sext i32 %12 to i64
  %14 = or i64 %11, %13
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = urem i64 %15, 899999999
  %17 = add i64 %16, 100000000
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %20 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: alwaysinline nounwind
define i8* @__ptauth_malloc(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.Metadata*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %9 = call i32 @checkTBI()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %1
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

; <label>:13:                                     ; preds = %1
  store i64 32, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = sub i64 %14, 1
  %16 = add i64 %15, 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load i64, i64* %2, align 8
  %19 = add i64 %18, 8
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call noalias i8* @malloc(i64 %20) #7
  %22 = bitcast i8* %21 to %struct.Metadata*
  store %struct.Metadata* %22, %struct.Metadata** %6, align 8
  %23 = load %struct.Metadata*, %struct.Metadata** %6, align 8
  %24 = load i64, i64* %2, align 8
  %25 = trunc i64 %24 to i32
  call void @initMD(%struct.Metadata* %23, i32 %25)
  %26 = load %struct.Metadata*, %struct.Metadata** %6, align 8
  %27 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.Metadata*, %struct.Metadata** %6, align 8
  %30 = bitcast %struct.Metadata* %29 to i32*
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i8* @__pacia(i8* %33, i64 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  ret i8* %36
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: alwaysinline nounwind
define i8* @__ptauth_calloc(i64, i64) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.Metadata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i32 @checkTBI()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %2
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

; <label>:12:                                     ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add i64 %14, 8
  %16 = call noalias i8* @calloc(i64 %13, i64 %15) #7
  %17 = bitcast i8* %16 to %struct.Metadata*
  store %struct.Metadata* %17, %struct.Metadata** %5, align 8
  %18 = load %struct.Metadata*, %struct.Metadata** %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = trunc i64 %19 to i32
  call void @initMD(%struct.Metadata* %18, i32 %20)
  %21 = load %struct.Metadata*, %struct.Metadata** %5, align 8
  %22 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %struct.Metadata*, %struct.Metadata** %5, align 8
  %25 = bitcast %struct.Metadata* %24 to i32*
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = bitcast i32* %26 to i8*
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i8* @__pacia(i8* %28, i64 %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  ret i8* %31
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: alwaysinline nounwind
define void @__ptauth_free(i8*) #2 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Metadata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %1
  br label %45

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = getelementptr inbounds i32, i32* %11, i64 -2
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.Metadata*
  store %struct.Metadata* %14, %struct.Metadata** %3, align 8
  %15 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %16 = ptrtoint %struct.Metadata* %15 to i64
  %17 = load i64, i64* @MASKHIGHBIT, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.Metadata*
  store %struct.Metadata* %21, %struct.Metadata** %3, align 8
  %22 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %23 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i8* @__autia(i8* %25, i64 %26, i8 70)
  store i8* %27, i8** %2, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i64, i64* @MASKLOWBIT, align 8
  %31 = xor i64 %30, -1
  %32 = and i64 %29, %31
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %9
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #8
  unreachable

; <label>:38:                                     ; preds = %9
  %39 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %40 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %39, i32 0, i32 0
  store i64 2, i64* %40, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = getelementptr inbounds i32, i32* %42, i64 -2
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* %44) #7
  br label %45

; <label>:45:                                     ; preds = %38, %8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: alwaysinline nounwind
define i8* @__ptauth_realloc(i8*, i64) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Metadata*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = call i32 @checkTBI()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load i64, i64* @MASKHIGHBIT, align 8
  %20 = xor i64 %19, -1
  %21 = and i64 %18, %20
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr i8, i8* %23, i64 -8
  %25 = load i64, i64* %5, align 8
  %26 = call i8* @realloc(i8* %24, i64 %25) #7
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr i8, i8* %27, i64 -8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %28, %29
  br i1 %30, label %31, label %48

; <label>:31:                                     ; preds = %15
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to %struct.Metadata*
  store %struct.Metadata* %33, %struct.Metadata** %8, align 8
  %34 = load %struct.Metadata*, %struct.Metadata** %8, align 8
  %35 = load i64, i64* %5, align 8
  %36 = trunc i64 %35 to i32
  call void @initMD(%struct.Metadata* %34, i32 %36)
  %37 = load %struct.Metadata*, %struct.Metadata** %8, align 8
  %38 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  %40 = load %struct.Metadata*, %struct.Metadata** %8, align 8
  %41 = bitcast %struct.Metadata* %40 to i32*
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = bitcast i32* %42 to i8*
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i8* @__pacia(i8* %44, i64 %45)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  store i8* %47, i8** %3, align 8
  br label %50

; <label>:48:                                     ; preds = %15
  %49 = load i8*, i8** %6, align 8
  store i8* %49, i8** %3, align 8
  br label %50

; <label>:50:                                     ; preds = %48, %31
  %51 = load i8*, i8** %3, align 8
  ret i8* %51
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: alwaysinline nounwind
define i8* @validatePointer(i8*, i8) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Metadata*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca %struct.Metadata*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %14, align 8
  store i8 %1, i8* %15, align 1
  %21 = load i8*, i8** %14, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %2
  %24 = load i8*, i8** %14, align 8
  store i8* %24, i8** %13, align 8
  br label %127

; <label>:25:                                     ; preds = %2
  %26 = load i8*, i8** %14, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 -8
  %28 = bitcast i8* %27 to %struct.Metadata*
  store %struct.Metadata* %28, %struct.Metadata** %16, align 8
  %29 = load %struct.Metadata*, %struct.Metadata** %16, align 8
  %30 = ptrtoint %struct.Metadata* %29 to i64
  %31 = load i64, i64* @MASKHIGHBIT, align 8
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to %struct.Metadata*
  store %struct.Metadata* %35, %struct.Metadata** %16, align 8
  %36 = load i8*, i8** %14, align 8
  store i8* %36, i8** %17, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = call i8* @__xpac(i8* %37)
  store i8* %38, i8** %18, align 8
  %39 = load %struct.Metadata*, %struct.Metadata** %16, align 8
  %40 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %19, align 8
  %42 = load i64, i64* %19, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

; <label>:44:                                     ; preds = %25
  %45 = load i8*, i8** %14, align 8
  %46 = load i64, i64* %19, align 8
  %47 = load i8, i8* %15, align 1
  %48 = call i8* @__autia(i8* %45, i64 %46, i8 %47)
  %49 = load i8*, i8** %18, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %53

; <label>:51:                                     ; preds = %44
  %52 = load i8*, i8** %14, align 8
  store i8* %52, i8** %13, align 8
  br label %127

; <label>:53:                                     ; preds = %44, %25
  %54 = load i8*, i8** %14, align 8
  %55 = load %struct.Metadata*, %struct.Metadata** %16, align 8
  %56 = load i8, i8* %15, align 1
  store i8* %54, i8** %4, align 8
  store %struct.Metadata* %55, %struct.Metadata** %5, align 8
  store i8 %56, i8* %6, align 1
  %57 = load i8*, i8** %4, align 8
  store i8* %57, i8** %7, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i8* @__xpac(i8* %58) #7
  store i8* %59, i8** %8, align 8
  store i64 9223372036854775807, i64* %9, align 8
  store i64 1024, i64* %9, align 8
  store i32 1, i32* %10, align 4
  br label %60

; <label>:60:                                     ; preds = %119, %53
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %9, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %122

; <label>:65:                                     ; preds = %60
  %66 = load i8*, i8** %8, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %67, %69
  %71 = srem i64 %70, 16
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

; <label>:73:                                     ; preds = %65
  %74 = load i8*, i8** %8, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %75, %77
  %79 = srem i64 %78, 16
  %80 = sub nsw i64 %79, 1
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %10, align 4
  br label %119

; <label>:85:                                     ; preds = %65
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = sub i64 0, %88
  %90 = getelementptr i8, i8* %86, i64 %89
  %91 = getelementptr i8, i8* %90, i64 8
  store i8* %91, i8** %7, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 0, %94
  %96 = getelementptr i8, i8* %92, i64 %95
  %97 = bitcast i8* %96 to %struct.Metadata*
  store %struct.Metadata* %97, %struct.Metadata** %5, align 8
  %98 = load %struct.Metadata*, %struct.Metadata** %5, align 8
  %99 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %11, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i8, i8* %6, align 1
  %104 = call i8* @__autia(i8* %101, i64 %102, i8 %103) #7
  store i8* %104, i8** %12, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

; <label>:107:                                    ; preds = %85
  %108 = load i8*, i8** %12, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %118

; <label>:110:                                    ; preds = %107
  %111 = load i8, i8* %6, align 1
  %112 = zext i8 %111 to i32
  switch i32 %112, label %115 [
    i32 76, label %113
    i32 83, label %114
  ]

; <label>:113:                                    ; preds = %110
  br label %116

; <label>:114:                                    ; preds = %110
  br label %116

; <label>:115:                                    ; preds = %110
  br label %116

; <label>:116:                                    ; preds = %115, %114, %113
  %117 = load i8*, i8** %8, align 8
  store i8* %117, i8** %3, align 8
  br label %124

; <label>:118:                                    ; preds = %107, %85
  br label %119

; <label>:119:                                    ; preds = %118, %73
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %60

; <label>:122:                                    ; preds = %60
  %123 = load i8*, i8** %4, align 8
  store i8* %123, i8** %3, align 8
  br label %124

; <label>:124:                                    ; preds = %116, %122
  %125 = load i8*, i8** %3, align 8
  store i8* %125, i8** %20, align 8
  %126 = load i8*, i8** %14, align 8
  store i8* %126, i8** %13, align 8
  br label %127

; <label>:127:                                    ; preds = %124, %51, %23
  %128 = load i8*, i8** %13, align 8
  ret i8* %128
}

; Function Attrs: alwaysinline nounwind
define i8* @__GEPCheck(i8*) #2 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Metadata*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca %struct.Metadata*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  store i8* %0, i8** %21, align 8
  %24 = load i8*, i8** %21, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load i64, i64* @MASKLOWBIT, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  store i64 %28, i64* %22, align 8
  %29 = load i64, i64* %22, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %142

; <label>:31:                                     ; preds = %1
  %32 = load i8*, i8** %21, align 8
  store i8* %32, i8** %13, align 8
  store i8 76, i8* %14, align 1
  %33 = load i8*, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %31
  %36 = load i8*, i8** %13, align 8
  store i8* %36, i8** %12, align 8
  br label %139

; <label>:37:                                     ; preds = %31
  %38 = load i8*, i8** %13, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 -8
  %40 = bitcast i8* %39 to %struct.Metadata*
  store %struct.Metadata* %40, %struct.Metadata** %15, align 8
  %41 = load %struct.Metadata*, %struct.Metadata** %15, align 8
  %42 = ptrtoint %struct.Metadata* %41 to i64
  %43 = load i64, i64* @MASKHIGHBIT, align 8
  %44 = xor i64 %43, -1
  %45 = and i64 %42, %44
  %46 = inttoptr i64 %45 to i8*
  %47 = bitcast i8* %46 to %struct.Metadata*
  store %struct.Metadata* %47, %struct.Metadata** %15, align 8
  %48 = load i8*, i8** %13, align 8
  store i8* %48, i8** %16, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i8* @__xpac(i8* %49) #7
  store i8* %50, i8** %17, align 8
  %51 = load %struct.Metadata*, %struct.Metadata** %15, align 8
  %52 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %18, align 8
  %54 = load i64, i64* %18, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

; <label>:56:                                     ; preds = %37
  %57 = load i8*, i8** %13, align 8
  %58 = load i64, i64* %18, align 8
  %59 = load i8, i8* %14, align 1
  %60 = call i8* @__autia(i8* %57, i64 %58, i8 %59) #7
  %61 = load i8*, i8** %17, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %65

; <label>:63:                                     ; preds = %56
  %64 = load i8*, i8** %13, align 8
  store i8* %64, i8** %12, align 8
  br label %139

; <label>:65:                                     ; preds = %56, %37
  %66 = load i8*, i8** %13, align 8
  %67 = load %struct.Metadata*, %struct.Metadata** %15, align 8
  %68 = load i8, i8* %14, align 1
  store i8* %66, i8** %3, align 8
  store %struct.Metadata* %67, %struct.Metadata** %4, align 8
  store i8 %68, i8* %5, align 1
  %69 = load i8*, i8** %3, align 8
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = call i8* @__xpac(i8* %70) #7
  store i8* %71, i8** %7, align 8
  store i64 9223372036854775807, i64* %8, align 8
  store i64 1024, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %72

; <label>:72:                                     ; preds = %131, %65
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %8, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %134

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** %7, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %79, %81
  %83 = srem i64 %82, 16
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

; <label>:85:                                     ; preds = %77
  %86 = load i8*, i8** %7, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %87, %89
  %91 = srem i64 %90, 16
  %92 = sub nsw i64 %91, 1
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %9, align 4
  br label %131

; <label>:97:                                     ; preds = %77
  %98 = load i8*, i8** %3, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr i8, i8* %98, i64 %101
  %103 = getelementptr i8, i8* %102, i64 8
  store i8* %103, i8** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = sub i64 0, %106
  %108 = getelementptr i8, i8* %104, i64 %107
  %109 = bitcast i8* %108 to %struct.Metadata*
  store %struct.Metadata* %109, %struct.Metadata** %4, align 8
  %110 = load %struct.Metadata*, %struct.Metadata** %4, align 8
  %111 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %10, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i8, i8* %5, align 1
  %116 = call i8* @__autia(i8* %113, i64 %114, i8 %115) #7
  store i8* %116, i8** %11, align 8
  %117 = load i64, i64* %10, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

; <label>:119:                                    ; preds = %97
  %120 = load i8*, i8** %11, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %130

; <label>:122:                                    ; preds = %119
  %123 = load i8, i8* %5, align 1
  %124 = zext i8 %123 to i32
  switch i32 %124, label %127 [
    i32 76, label %125
    i32 83, label %126
  ]

; <label>:125:                                    ; preds = %122
  br label %128

; <label>:126:                                    ; preds = %122
  br label %128

; <label>:127:                                    ; preds = %122
  br label %128

; <label>:128:                                    ; preds = %127, %126, %125
  %129 = load i8*, i8** %7, align 8
  store i8* %129, i8** %2, align 8
  br label %136

; <label>:130:                                    ; preds = %119, %97
  br label %131

; <label>:131:                                    ; preds = %130, %85
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %72

; <label>:134:                                    ; preds = %72
  %135 = load i8*, i8** %3, align 8
  store i8* %135, i8** %2, align 8
  br label %136

; <label>:136:                                    ; preds = %134, %128
  %137 = load i8*, i8** %2, align 8
  store i8* %137, i8** %19, align 8
  %138 = load i8*, i8** %13, align 8
  store i8* %138, i8** %12, align 8
  br label %139

; <label>:139:                                    ; preds = %35, %63, %136
  %140 = load i8*, i8** %12, align 8
  store i8* %140, i8** %23, align 8
  %141 = load i8*, i8** %21, align 8
  store i8* %141, i8** %20, align 8
  br label %144

; <label>:142:                                    ; preds = %1
  %143 = load i8*, i8** %21, align 8
  store i8* %143, i8** %20, align 8
  br label %144

; <label>:144:                                    ; preds = %142, %139
  %145 = load i8*, i8** %20, align 8
  ret i8* %145
}

; Function Attrs: alwaysinline nounwind
define i8* @__nestedGEPCheck(i8*) #2 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Metadata*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca %struct.Metadata*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  store i8* %0, i8** %21, align 8
  %24 = load i8*, i8** %21, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load i64, i64* @MASKLOWBIT, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  store i64 %28, i64* %22, align 8
  %29 = load i64, i64* %22, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %142

; <label>:31:                                     ; preds = %1
  %32 = load i8*, i8** %21, align 8
  store i8* %32, i8** %13, align 8
  store i8 76, i8* %14, align 1
  %33 = load i8*, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %31
  %36 = load i8*, i8** %13, align 8
  store i8* %36, i8** %12, align 8
  br label %139

; <label>:37:                                     ; preds = %31
  %38 = load i8*, i8** %13, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 -8
  %40 = bitcast i8* %39 to %struct.Metadata*
  store %struct.Metadata* %40, %struct.Metadata** %15, align 8
  %41 = load %struct.Metadata*, %struct.Metadata** %15, align 8
  %42 = ptrtoint %struct.Metadata* %41 to i64
  %43 = load i64, i64* @MASKHIGHBIT, align 8
  %44 = xor i64 %43, -1
  %45 = and i64 %42, %44
  %46 = inttoptr i64 %45 to i8*
  %47 = bitcast i8* %46 to %struct.Metadata*
  store %struct.Metadata* %47, %struct.Metadata** %15, align 8
  %48 = load i8*, i8** %13, align 8
  store i8* %48, i8** %16, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i8* @__xpac(i8* %49) #7
  store i8* %50, i8** %17, align 8
  %51 = load %struct.Metadata*, %struct.Metadata** %15, align 8
  %52 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %18, align 8
  %54 = load i64, i64* %18, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

; <label>:56:                                     ; preds = %37
  %57 = load i8*, i8** %13, align 8
  %58 = load i64, i64* %18, align 8
  %59 = load i8, i8* %14, align 1
  %60 = call i8* @__autia(i8* %57, i64 %58, i8 %59) #7
  %61 = load i8*, i8** %17, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %65

; <label>:63:                                     ; preds = %56
  %64 = load i8*, i8** %13, align 8
  store i8* %64, i8** %12, align 8
  br label %139

; <label>:65:                                     ; preds = %56, %37
  %66 = load i8*, i8** %13, align 8
  %67 = load %struct.Metadata*, %struct.Metadata** %15, align 8
  %68 = load i8, i8* %14, align 1
  store i8* %66, i8** %3, align 8
  store %struct.Metadata* %67, %struct.Metadata** %4, align 8
  store i8 %68, i8* %5, align 1
  %69 = load i8*, i8** %3, align 8
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = call i8* @__xpac(i8* %70) #7
  store i8* %71, i8** %7, align 8
  store i64 9223372036854775807, i64* %8, align 8
  store i64 1024, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %72

; <label>:72:                                     ; preds = %131, %65
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %8, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %134

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** %7, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %79, %81
  %83 = srem i64 %82, 16
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

; <label>:85:                                     ; preds = %77
  %86 = load i8*, i8** %7, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %87, %89
  %91 = srem i64 %90, 16
  %92 = sub nsw i64 %91, 1
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %9, align 4
  br label %131

; <label>:97:                                     ; preds = %77
  %98 = load i8*, i8** %3, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr i8, i8* %98, i64 %101
  %103 = getelementptr i8, i8* %102, i64 8
  store i8* %103, i8** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = sub i64 0, %106
  %108 = getelementptr i8, i8* %104, i64 %107
  %109 = bitcast i8* %108 to %struct.Metadata*
  store %struct.Metadata* %109, %struct.Metadata** %4, align 8
  %110 = load %struct.Metadata*, %struct.Metadata** %4, align 8
  %111 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %10, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i8, i8* %5, align 1
  %116 = call i8* @__autia(i8* %113, i64 %114, i8 %115) #7
  store i8* %116, i8** %11, align 8
  %117 = load i64, i64* %10, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

; <label>:119:                                    ; preds = %97
  %120 = load i8*, i8** %11, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %130

; <label>:122:                                    ; preds = %119
  %123 = load i8, i8* %5, align 1
  %124 = zext i8 %123 to i32
  switch i32 %124, label %127 [
    i32 76, label %125
    i32 83, label %126
  ]

; <label>:125:                                    ; preds = %122
  br label %128

; <label>:126:                                    ; preds = %122
  br label %128

; <label>:127:                                    ; preds = %122
  br label %128

; <label>:128:                                    ; preds = %127, %126, %125
  %129 = load i8*, i8** %7, align 8
  store i8* %129, i8** %2, align 8
  br label %136

; <label>:130:                                    ; preds = %119, %97
  br label %131

; <label>:131:                                    ; preds = %130, %85
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %72

; <label>:134:                                    ; preds = %72
  %135 = load i8*, i8** %3, align 8
  store i8* %135, i8** %2, align 8
  br label %136

; <label>:136:                                    ; preds = %134, %128
  %137 = load i8*, i8** %2, align 8
  store i8* %137, i8** %19, align 8
  %138 = load i8*, i8** %13, align 8
  store i8* %138, i8** %12, align 8
  br label %139

; <label>:139:                                    ; preds = %35, %63, %136
  %140 = load i8*, i8** %12, align 8
  store i8* %140, i8** %23, align 8
  %141 = load i8*, i8** %21, align 8
  store i8* %141, i8** %20, align 8
  br label %144

; <label>:142:                                    ; preds = %1
  %143 = load i8*, i8** %21, align 8
  store i8* %143, i8** %20, align 8
  br label %144

; <label>:144:                                    ; preds = %142, %139
  %145 = load i8*, i8** %20, align 8
  ret i8* %145
}

; Function Attrs: alwaysinline nounwind
define i8* @__loadCheck(i8*) #2 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Metadata*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca %struct.Metadata*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  store i8* %0, i8** %21, align 8
  %24 = load i8*, i8** %21, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load i64, i64* @MASKLOWBIT, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  store i64 %28, i64* %22, align 8
  %29 = load i64, i64* %22, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %142

; <label>:31:                                     ; preds = %1
  %32 = load i8*, i8** %21, align 8
  store i8* %32, i8** %13, align 8
  store i8 76, i8* %14, align 1
  %33 = load i8*, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %31
  %36 = load i8*, i8** %13, align 8
  store i8* %36, i8** %12, align 8
  br label %139

; <label>:37:                                     ; preds = %31
  %38 = load i8*, i8** %13, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 -8
  %40 = bitcast i8* %39 to %struct.Metadata*
  store %struct.Metadata* %40, %struct.Metadata** %15, align 8
  %41 = load %struct.Metadata*, %struct.Metadata** %15, align 8
  %42 = ptrtoint %struct.Metadata* %41 to i64
  %43 = load i64, i64* @MASKHIGHBIT, align 8
  %44 = xor i64 %43, -1
  %45 = and i64 %42, %44
  %46 = inttoptr i64 %45 to i8*
  %47 = bitcast i8* %46 to %struct.Metadata*
  store %struct.Metadata* %47, %struct.Metadata** %15, align 8
  %48 = load i8*, i8** %13, align 8
  store i8* %48, i8** %16, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i8* @__xpac(i8* %49) #7
  store i8* %50, i8** %17, align 8
  %51 = load %struct.Metadata*, %struct.Metadata** %15, align 8
  %52 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %18, align 8
  %54 = load i64, i64* %18, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

; <label>:56:                                     ; preds = %37
  %57 = load i8*, i8** %13, align 8
  %58 = load i64, i64* %18, align 8
  %59 = load i8, i8* %14, align 1
  %60 = call i8* @__autia(i8* %57, i64 %58, i8 %59) #7
  %61 = load i8*, i8** %17, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %65

; <label>:63:                                     ; preds = %56
  %64 = load i8*, i8** %13, align 8
  store i8* %64, i8** %12, align 8
  br label %139

; <label>:65:                                     ; preds = %56, %37
  %66 = load i8*, i8** %13, align 8
  %67 = load %struct.Metadata*, %struct.Metadata** %15, align 8
  %68 = load i8, i8* %14, align 1
  store i8* %66, i8** %3, align 8
  store %struct.Metadata* %67, %struct.Metadata** %4, align 8
  store i8 %68, i8* %5, align 1
  %69 = load i8*, i8** %3, align 8
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = call i8* @__xpac(i8* %70) #7
  store i8* %71, i8** %7, align 8
  store i64 9223372036854775807, i64* %8, align 8
  store i64 1024, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %72

; <label>:72:                                     ; preds = %131, %65
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %8, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %134

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** %7, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %79, %81
  %83 = srem i64 %82, 16
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

; <label>:85:                                     ; preds = %77
  %86 = load i8*, i8** %7, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %87, %89
  %91 = srem i64 %90, 16
  %92 = sub nsw i64 %91, 1
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %9, align 4
  br label %131

; <label>:97:                                     ; preds = %77
  %98 = load i8*, i8** %3, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr i8, i8* %98, i64 %101
  %103 = getelementptr i8, i8* %102, i64 8
  store i8* %103, i8** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = sub i64 0, %106
  %108 = getelementptr i8, i8* %104, i64 %107
  %109 = bitcast i8* %108 to %struct.Metadata*
  store %struct.Metadata* %109, %struct.Metadata** %4, align 8
  %110 = load %struct.Metadata*, %struct.Metadata** %4, align 8
  %111 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %10, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i8, i8* %5, align 1
  %116 = call i8* @__autia(i8* %113, i64 %114, i8 %115) #7
  store i8* %116, i8** %11, align 8
  %117 = load i64, i64* %10, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

; <label>:119:                                    ; preds = %97
  %120 = load i8*, i8** %11, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %130

; <label>:122:                                    ; preds = %119
  %123 = load i8, i8* %5, align 1
  %124 = zext i8 %123 to i32
  switch i32 %124, label %127 [
    i32 76, label %125
    i32 83, label %126
  ]

; <label>:125:                                    ; preds = %122
  br label %128

; <label>:126:                                    ; preds = %122
  br label %128

; <label>:127:                                    ; preds = %122
  br label %128

; <label>:128:                                    ; preds = %127, %126, %125
  %129 = load i8*, i8** %7, align 8
  store i8* %129, i8** %2, align 8
  br label %136

; <label>:130:                                    ; preds = %119, %97
  br label %131

; <label>:131:                                    ; preds = %130, %85
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %72

; <label>:134:                                    ; preds = %72
  %135 = load i8*, i8** %3, align 8
  store i8* %135, i8** %2, align 8
  br label %136

; <label>:136:                                    ; preds = %134, %128
  %137 = load i8*, i8** %2, align 8
  store i8* %137, i8** %19, align 8
  %138 = load i8*, i8** %13, align 8
  store i8* %138, i8** %12, align 8
  br label %139

; <label>:139:                                    ; preds = %35, %63, %136
  %140 = load i8*, i8** %12, align 8
  store i8* %140, i8** %23, align 8
  %141 = load i8*, i8** %21, align 8
  store i8* %141, i8** %20, align 8
  br label %144

; <label>:142:                                    ; preds = %1
  %143 = load i8*, i8** %21, align 8
  store i8* %143, i8** %20, align 8
  br label %144

; <label>:144:                                    ; preds = %142, %139
  %145 = load i8*, i8** %20, align 8
  ret i8* %145
}

; Function Attrs: alwaysinline nounwind
define i8* @__storeCheck(i8*) #2 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Metadata*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca %struct.Metadata*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  store i8* %0, i8** %21, align 8
  %24 = load i8*, i8** %21, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load i64, i64* @MASKLOWBIT, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  store i64 %28, i64* %22, align 8
  %29 = load i64, i64* %22, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %142

; <label>:31:                                     ; preds = %1
  %32 = load i8*, i8** %21, align 8
  store i8* %32, i8** %13, align 8
  store i8 83, i8* %14, align 1
  %33 = load i8*, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %31
  %36 = load i8*, i8** %13, align 8
  store i8* %36, i8** %12, align 8
  br label %139

; <label>:37:                                     ; preds = %31
  %38 = load i8*, i8** %13, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 -8
  %40 = bitcast i8* %39 to %struct.Metadata*
  store %struct.Metadata* %40, %struct.Metadata** %15, align 8
  %41 = load %struct.Metadata*, %struct.Metadata** %15, align 8
  %42 = ptrtoint %struct.Metadata* %41 to i64
  %43 = load i64, i64* @MASKHIGHBIT, align 8
  %44 = xor i64 %43, -1
  %45 = and i64 %42, %44
  %46 = inttoptr i64 %45 to i8*
  %47 = bitcast i8* %46 to %struct.Metadata*
  store %struct.Metadata* %47, %struct.Metadata** %15, align 8
  %48 = load i8*, i8** %13, align 8
  store i8* %48, i8** %16, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i8* @__xpac(i8* %49) #7
  store i8* %50, i8** %17, align 8
  %51 = load %struct.Metadata*, %struct.Metadata** %15, align 8
  %52 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %18, align 8
  %54 = load i64, i64* %18, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

; <label>:56:                                     ; preds = %37
  %57 = load i8*, i8** %13, align 8
  %58 = load i64, i64* %18, align 8
  %59 = load i8, i8* %14, align 1
  %60 = call i8* @__autia(i8* %57, i64 %58, i8 %59) #7
  %61 = load i8*, i8** %17, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %65

; <label>:63:                                     ; preds = %56
  %64 = load i8*, i8** %13, align 8
  store i8* %64, i8** %12, align 8
  br label %139

; <label>:65:                                     ; preds = %56, %37
  %66 = load i8*, i8** %13, align 8
  %67 = load %struct.Metadata*, %struct.Metadata** %15, align 8
  %68 = load i8, i8* %14, align 1
  store i8* %66, i8** %3, align 8
  store %struct.Metadata* %67, %struct.Metadata** %4, align 8
  store i8 %68, i8* %5, align 1
  %69 = load i8*, i8** %3, align 8
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = call i8* @__xpac(i8* %70) #7
  store i8* %71, i8** %7, align 8
  store i64 9223372036854775807, i64* %8, align 8
  store i64 1024, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %72

; <label>:72:                                     ; preds = %131, %65
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %8, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %134

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** %7, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %79, %81
  %83 = srem i64 %82, 16
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

; <label>:85:                                     ; preds = %77
  %86 = load i8*, i8** %7, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %87, %89
  %91 = srem i64 %90, 16
  %92 = sub nsw i64 %91, 1
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %9, align 4
  br label %131

; <label>:97:                                     ; preds = %77
  %98 = load i8*, i8** %3, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr i8, i8* %98, i64 %101
  %103 = getelementptr i8, i8* %102, i64 8
  store i8* %103, i8** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = sub i64 0, %106
  %108 = getelementptr i8, i8* %104, i64 %107
  %109 = bitcast i8* %108 to %struct.Metadata*
  store %struct.Metadata* %109, %struct.Metadata** %4, align 8
  %110 = load %struct.Metadata*, %struct.Metadata** %4, align 8
  %111 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %10, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i8, i8* %5, align 1
  %116 = call i8* @__autia(i8* %113, i64 %114, i8 %115) #7
  store i8* %116, i8** %11, align 8
  %117 = load i64, i64* %10, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

; <label>:119:                                    ; preds = %97
  %120 = load i8*, i8** %11, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %130

; <label>:122:                                    ; preds = %119
  %123 = load i8, i8* %5, align 1
  %124 = zext i8 %123 to i32
  switch i32 %124, label %127 [
    i32 76, label %125
    i32 83, label %126
  ]

; <label>:125:                                    ; preds = %122
  br label %128

; <label>:126:                                    ; preds = %122
  br label %128

; <label>:127:                                    ; preds = %122
  br label %128

; <label>:128:                                    ; preds = %127, %126, %125
  %129 = load i8*, i8** %7, align 8
  store i8* %129, i8** %2, align 8
  br label %136

; <label>:130:                                    ; preds = %119, %97
  br label %131

; <label>:131:                                    ; preds = %130, %85
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %72

; <label>:134:                                    ; preds = %72
  %135 = load i8*, i8** %3, align 8
  store i8* %135, i8** %2, align 8
  br label %136

; <label>:136:                                    ; preds = %134, %128
  %137 = load i8*, i8** %2, align 8
  store i8* %137, i8** %19, align 8
  %138 = load i8*, i8** %13, align 8
  store i8* %138, i8** %12, align 8
  br label %139

; <label>:139:                                    ; preds = %35, %63, %136
  %140 = load i8*, i8** %12, align 8
  store i8* %140, i8** %23, align 8
  %141 = load i8*, i8** %23, align 8
  store i8* %141, i8** %20, align 8
  br label %144

; <label>:142:                                    ; preds = %1
  %143 = load i8*, i8** %21, align 8
  store i8* %143, i8** %20, align 8
  br label %144

; <label>:144:                                    ; preds = %142, %139
  %145 = load i8*, i8** %20, align 8
  ret i8* %145
}

; Function Attrs: noinline nounwind optnone
define void @checkPointstoHeap() #0 {
  %1 = alloca [512 x i8], align 1
  %2 = alloca [512 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = call i32 @getpid() #7
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @filename, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %9) #7
  %11 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @filename, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i32 0, i32 0))
  store %struct._IO_FILE* %11, %struct._IO_FILE** @file, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.5, i32 0, i32 0), i8** %3, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.6, i32 0, i32 0), i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

; <label>:12:                                     ; preds = %69, %24, %0
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @file, align 8
  %15 = call i8* @fgets(i8* %13, i32 512, %struct._IO_FILE* %14)
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %73

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i32 0, i32 0
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* %18)
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i32 0, i32 0
  %21 = load i8*, i8** %3, align 8
  %22 = call i8* @strstr(i8* %20, i8* %21) #9
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %45

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i32 0, i32 0
  %26 = call i8* @strtok(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #7
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strtoul(i8* %27, i8** %7, i32 16) #7
  store i64 %28, i64* @address_start, align 8
  %29 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)) #7
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strtoul(i8* %30, i8** %7, i32 16) #7
  store i64 %31, i64* @address_end, align 8
  %32 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)) #7
  store i8* %32, i8** %6, align 8
  %33 = load i64, i64* @address_start, align 8
  %34 = load i32, i32* @cnt, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [100 x i64], [100 x i64]* @arrayAddress, i64 0, i64 %35
  store i64 %33, i64* %36, align 8
  %37 = load i32, i32* @cnt, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @cnt, align 4
  %39 = load i64, i64* @address_end, align 8
  %40 = load i32, i32* @cnt, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [100 x i64], [100 x i64]* @arrayAddress, i64 0, i64 %41
  store i64 %39, i64* %42, align 8
  %43 = load i32, i32* @cnt, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @cnt, align 4
  store i32 1, i32* %5, align 4
  br label %12

; <label>:45:                                     ; preds = %17
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %69

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i32 0, i32 0
  %50 = call i8* @strtok(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #7
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strtoul(i8* %51, i8** %7, i32 16) #7
  store i64 %52, i64* @address_start, align 8
  %53 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)) #7
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strtoul(i8* %54, i8** %7, i32 16) #7
  store i64 %55, i64* @address_end, align 8
  %56 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)) #7
  store i8* %56, i8** %6, align 8
  %57 = load i64, i64* @address_start, align 8
  %58 = load i32, i32* @cnt, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [100 x i64], [100 x i64]* @arrayAddress, i64 0, i64 %59
  store i64 %57, i64* %60, align 8
  %61 = load i32, i32* @cnt, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @cnt, align 4
  %63 = load i64, i64* @address_end, align 8
  %64 = load i32, i32* @cnt, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [100 x i64], [100 x i64]* @arrayAddress, i64 0, i64 %65
  store i64 %63, i64* %66, align 8
  %67 = load i32, i32* @cnt, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @cnt, align 4
  store i32 0, i32* %5, align 4
  br label %69

; <label>:69:                                     ; preds = %48, %45
  %70 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i32 0, i32 0
  %71 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i32 0, i32 0
  %72 = call i8* @strncpy(i8* %70, i8* %71, i64 512) #7
  br label %12

; <label>:73:                                     ; preds = %12
  store i32 0, i32* %8, align 4
  br label %74

; <label>:74:                                     ; preds = %84, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @cnt, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %87

; <label>:78:                                     ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [100 x i64], [100 x i64]* @arrayAddress, i64 0, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i64 %82)
  br label %84

; <label>:84:                                     ; preds = %78
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %74

; <label>:87:                                     ; preds = %74
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @file, align 8
  %89 = call i32 @fclose(%struct._IO_FILE* %88)
  ret void
}

; Function Attrs: nounwind
declare i32 @getpid() #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #5

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #1

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: alwaysinline nounwind
define i8* @__xpac(i8*) #2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = ptrtoint i8* %3 to i64
  %5 = load i64, i64* @MASKLOWBIT, align 8
  %6 = and i64 %4, %5
  %7 = inttoptr i64 %6 to i8*
  ret i8* %7
}

; Function Attrs: alwaysinline nounwind
define i32 @__pacga(i64, i64) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  call void asm sideeffect "eor x0,x0,#0x2\0A", ""() #7, !srcloc !18
  call void asm sideeffect "eor x0,x0,#0x3\0A", ""() #7, !srcloc !19
  call void asm sideeffect "eor x0,x0,#0x2\0A", ""() #7, !srcloc !20
  call void asm sideeffect "eor x0,x0,#0x4\0A", ""() #7, !srcloc !21
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = xor i64 %5, %6
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: alwaysinline nounwind
define i8* @__pacia(i8*, i64) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = load i64, i64* @MASK7BITS, align 8
  %12 = and i64 %10, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @MASK7BITS, align 8
  %15 = and i64 %13, %14
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = xor i64 %16, %17
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = shl i64 %19, 56
  store i64 %20, i64* %7, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load i64, i64* %7, align 8
  %24 = or i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = inttoptr i64 %25 to i8*
  ret i8* %26
}

; Function Attrs: alwaysinline nounwind
define i8* @__autia(i8*, i64, i8) #2 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %12, align 8
  store i64 %1, i64* %13, align 8
  store i8 %2, i8* %14, align 1
  %20 = load i8*, i8** %12, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = load i64, i64* @MASKLOWBIT, align 8
  %23 = xor i64 %22, -1
  %24 = and i64 %21, %23
  store i64 %24, i64* %15, align 8
  %25 = load i64, i64* %15, align 8
  %26 = lshr i64 %25, 56
  store i64 %26, i64* %15, align 8
  %27 = load i8*, i8** %12, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i64, i64* @MASKLOWBIT, align 8
  %31 = and i64 %29, %30
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %16, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = load i64, i64* %13, align 8
  store i8* %33, i8** %4, align 8
  store i64 %34, i64* %5, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load i64, i64* @MASK7BITS, align 8
  %38 = and i64 %36, %37
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @MASK7BITS, align 8
  %41 = and i64 %39, %40
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = xor i64 %42, %43
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = shl i64 %45, 56
  store i64 %46, i64* %8, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = load i64, i64* %8, align 8
  %50 = or i64 %48, %49
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %17, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load i64, i64* @MASKLOWBIT, align 8
  %56 = xor i64 %55, -1
  %57 = and i64 %54, %56
  store i64 %57, i64* %18, align 8
  %58 = load i64, i64* %18, align 8
  %59 = lshr i64 %58, 56
  store i64 %59, i64* %19, align 8
  %60 = load i64, i64* %19, align 8
  %61 = load i64, i64* %15, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

; <label>:63:                                     ; preds = %3
  %64 = load i8*, i8** %16, align 8
  store i8* %64, i8** %11, align 8
  br label %73

; <label>:65:                                     ; preds = %3
  %66 = load i8, i8* %14, align 1
  %67 = zext i8 %66 to i32
  switch i32 %67, label %71 [
    i32 70, label %68
    i32 76, label %69
    i32 83, label %70
  ]

; <label>:68:                                     ; preds = %65
  br label %72

; <label>:69:                                     ; preds = %65
  br label %72

; <label>:70:                                     ; preds = %65
  br label %72

; <label>:71:                                     ; preds = %65
  br label %72

; <label>:72:                                     ; preds = %71, %70, %69, %68
  store i8* null, i8** %11, align 8
  br label %73

; <label>:73:                                     ; preds = %72, %63
  %74 = load i8*, i8** %11, align 8
  ret i8* %74
}

; Function Attrs: noinline nounwind optnone
define void @set_info(%struct.person*, i32, i64) #0 !dbg !22 {
  %4 = alloca %struct.person*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.person* %0, %struct.person** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.person** %4, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !27, metadata !DIExpression()), !dbg !28
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !29, metadata !DIExpression()), !dbg !30
  %7 = load i32, i32* %5, align 4, !dbg !31
  %8 = load %struct.person*, %struct.person** %4, align 8, !dbg !32
  %9 = getelementptr inbounds %struct.person, %struct.person* %8, i32 0, i32 1, !dbg !33
  store i32 %7, i32* %9, align 8, !dbg !34
  %10 = load i64, i64* %6, align 8, !dbg !35
  %11 = load %struct.person*, %struct.person** %4, align 8, !dbg !36
  %12 = getelementptr inbounds %struct.person, %struct.person* %11, i32 0, i32 2, !dbg !37
  store i64 %10, i64* %12, align 8, !dbg !38
  ret void, !dbg !39
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: noinline nounwind optnone
define void @print_person(%struct.person*) #0 !dbg !40 {
  %2 = alloca %struct.person*, align 8
  store %struct.person* %0, %struct.person** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.person** %2, metadata !43, metadata !DIExpression()), !dbg !44
  %3 = load %struct.person*, %struct.person** %2, align 8, !dbg !45
  %4 = getelementptr inbounds %struct.person, %struct.person* %3, i32 0, i32 2, !dbg !46
  %5 = load i64, i64* %4, align 8, !dbg !46
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i64 %5), !dbg !47
  %7 = load %struct.person*, %struct.person** %2, align 8, !dbg !48
  %8 = getelementptr inbounds %struct.person, %struct.person* %7, i32 0, i32 1, !dbg !49
  %9 = load i32, i32* %8, align 8, !dbg !49
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.14, i32 0, i32 0), i32 %9), !dbg !50
  %11 = bitcast %struct.person** %2 to i8*, !dbg !51
  %12 = call i8* @__loadCheck(i8* %11), !dbg !51
  %13 = bitcast i8* %12 to %struct.person**, !dbg !51
  %14 = load %struct.person*, %struct.person** %13, align 8, !dbg !51
  %15 = bitcast %struct.person* %14 to i8*, !dbg !51
  call void @__ptauth_free(i8* %15)
  ret void, !dbg !52
}

; Function Attrs: noinline nounwind optnone
define void @use_after_free() #0 !dbg !53 {
  %1 = alloca %struct.person*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.person** %1, metadata !56, metadata !DIExpression()), !dbg !57
  %3 = call i8* @__ptauth_malloc(i64 24)
  %4 = bitcast i8* %3 to %struct.person*, !dbg !58
  store %struct.person* %4, %struct.person** %1, align 8, !dbg !57
  %5 = bitcast %struct.person** %1 to i8*, !dbg !59
  %6 = call i8* @__loadCheck(i8* %5), !dbg !59
  %7 = bitcast i8* %6 to %struct.person**, !dbg !59
  %8 = load %struct.person*, %struct.person** %7, align 8, !dbg !59
  call void @set_info(%struct.person* %8, i32 25, i64 50), !dbg !60
  %9 = bitcast %struct.person** %1 to i8*, !dbg !61
  %10 = call i8* @__loadCheck(i8* %9), !dbg !61
  %11 = bitcast i8* %10 to %struct.person**, !dbg !61
  %12 = load %struct.person*, %struct.person** %11, align 8, !dbg !61
  call void @print_person(%struct.person* %12), !dbg !62
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2.15, i32 0, i32 0)), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %2, metadata !64, metadata !DIExpression()), !dbg !66
  %14 = load %struct.person*, %struct.person** %1, align 8, !dbg !67
  %15 = bitcast %struct.person* %14 to i8*, !dbg !68
  %16 = call i8* @__GEPCheck(i8* %15), !dbg !68
  %17 = bitcast i8* %16 to %struct.person*, !dbg !68
  %18 = getelementptr inbounds %struct.person, %struct.person* %17, i32 0, i32 2, !dbg !68
  %19 = load i64, i64* %18, align 8, !dbg !68
  %20 = trunc i64 %19 to i32, !dbg !67
  store i32 %20, i32* %2, align 4, !dbg !66
  ret void, !dbg !69
}

; Function Attrs: noinline nounwind optnone
define void @double_free() #0 !dbg !70 {
  %1 = alloca %struct.person*, align 8
  call void @llvm.dbg.declare(metadata %struct.person** %1, metadata !71, metadata !DIExpression()), !dbg !72
  %2 = call i8* @__ptauth_malloc(i64 24)
  %3 = bitcast i8* %2 to %struct.person*, !dbg !73
  store %struct.person* %3, %struct.person** %1, align 8, !dbg !72
  %4 = bitcast %struct.person** %1 to i8*, !dbg !74
  %5 = call i8* @__loadCheck(i8* %4), !dbg !74
  %6 = bitcast i8* %5 to %struct.person**, !dbg !74
  %7 = load %struct.person*, %struct.person** %6, align 8, !dbg !74
  call void @set_info(%struct.person* %7, i32 25, i64 50), !dbg !75
  %8 = bitcast %struct.person** %1 to i8*, !dbg !76
  %9 = call i8* @__loadCheck(i8* %8), !dbg !76
  %10 = bitcast i8* %9 to %struct.person**, !dbg !76
  %11 = load %struct.person*, %struct.person** %10, align 8, !dbg !76
  call void @print_person(%struct.person* %11), !dbg !77
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3.16, i32 0, i32 0)), !dbg !78
  %13 = bitcast %struct.person** %1 to i8*, !dbg !79
  %14 = call i8* @__loadCheck(i8* %13), !dbg !79
  %15 = bitcast i8* %14 to %struct.person**, !dbg !79
  %16 = load %struct.person*, %struct.person** %15, align 8, !dbg !79
  %17 = bitcast %struct.person* %16 to i8*, !dbg !79
  call void @__ptauth_free(i8* %17)
  ret void, !dbg !80
}

; Function Attrs: noinline nounwind optnone
define void @invalid_free() #0 !dbg !81 {
  %1 = alloca %struct.person*, align 8
  call void @llvm.dbg.declare(metadata %struct.person** %1, metadata !82, metadata !DIExpression()), !dbg !83
  %2 = call i8* @__ptauth_malloc(i64 24)
  %3 = bitcast i8* %2 to %struct.person*, !dbg !84
  store %struct.person* %3, %struct.person** %1, align 8, !dbg !83
  %4 = bitcast %struct.person** %1 to i8*, !dbg !85
  %5 = call i8* @__loadCheck(i8* %4), !dbg !85
  %6 = bitcast i8* %5 to %struct.person**, !dbg !85
  %7 = load %struct.person*, %struct.person** %6, align 8, !dbg !85
  call void @set_info(%struct.person* %7, i32 25, i64 50), !dbg !86
  %8 = load %struct.person*, %struct.person** %1, align 8, !dbg !87
  %9 = bitcast %struct.person* %8 to i8*, !dbg !88
  %10 = call i8* @__GEPCheck(i8* %9), !dbg !88
  %11 = bitcast i8* %10 to %struct.person*, !dbg !88
  %12 = getelementptr inbounds %struct.person, %struct.person* %11, i64 1, !dbg !88
  store %struct.person* %12, %struct.person** %1, align 8, !dbg !89
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4.17, i32 0, i32 0)), !dbg !90
  %14 = load %struct.person*, %struct.person** %1, align 8, !dbg !91
  %15 = bitcast %struct.person* %14 to i8*, !dbg !91
  call void @__ptauth_free(i8* %15)
  ret void, !dbg !92
}

; Function Attrs: noinline nounwind optnone
define void @print_usage() #0 !dbg !93 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.18, i32 0, i32 0)), !dbg !94
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6.19, i32 0, i32 0)), !dbg !95
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7.20, i32 0, i32 0)), !dbg !96
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0)), !dbg !97
  call void @exit(i32 0) #8, !dbg !98
  unreachable, !dbg !98
                                                  ; No predecessors!
  ret void, !dbg !99
}

; Function Attrs: noinline nounwind optnone
define i32 @main(i32, i8**) #0 !dbg !100 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !104, metadata !DIExpression()), !dbg !105
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !106, metadata !DIExpression()), !dbg !107
  %6 = load i32, i32* %4, align 4, !dbg !108
  %7 = icmp slt i32 %6, 2, !dbg !110
  br i1 %7, label %8, label %9, !dbg !111

; <label>:8:                                      ; preds = %2
  call void @print_usage(), !dbg !112
  br label %9, !dbg !114

; <label>:9:                                      ; preds = %8, %2
  %10 = load i8**, i8*** %5, align 8, !dbg !115
  %11 = getelementptr inbounds i8*, i8** %10, i64 1, !dbg !115
  %12 = load i8*, i8** %11, align 8, !dbg !115
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)) #9, !dbg !117
  %14 = icmp eq i32 %13, 0, !dbg !118
  br i1 %14, label %15, label %16, !dbg !119

; <label>:15:                                     ; preds = %9
  call void @use_after_free(), !dbg !120
  br label %16, !dbg !122

; <label>:16:                                     ; preds = %15, %9
  %17 = load i8**, i8*** %5, align 8, !dbg !123
  %18 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !123
  %19 = load i8*, i8** %18, align 8, !dbg !123
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)) #9, !dbg !125
  %21 = icmp eq i32 %20, 0, !dbg !126
  br i1 %21, label %22, label %23, !dbg !127

; <label>:22:                                     ; preds = %16
  call void @double_free(), !dbg !128
  br label %23, !dbg !130

; <label>:23:                                     ; preds = %22, %16
  %24 = load i8**, i8*** %5, align 8, !dbg !131
  %25 = getelementptr inbounds i8*, i8** %24, i64 1, !dbg !131
  %26 = load i8*, i8** %25, align 8, !dbg !131
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)) #9, !dbg !133
  %28 = icmp eq i32 %27, 0, !dbg !134
  br i1 %28, label %29, label %30, !dbg !135

; <label>:29:                                     ; preds = %23
  call void @invalid_free(), !dbg !136
  br label %31, !dbg !138

; <label>:30:                                     ; preds = %23
  call void @print_usage(), !dbg !139
  br label %31

; <label>:31:                                     ; preds = %30, %29
  ret i32 0, !dbg !141
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8.3a" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8.3a" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8.3a" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8.3a" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8.3a" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8.3a" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!llvm.dbg.cu = !{!4}

!0 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !6, retainedTypes: !7)
!5 = !DIFile(filename: "toyexample.c", directory: "/pass/Test")
!6 = !{}
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "person", file: !5, line: 6, size: 192, elements: !10)
!10 = !{!11, !14, !16}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !9, file: !5, line: 8, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !9, file: !5, line: 9, baseType: !15, size: 32, offset: 64)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ID", scope: !9, file: !5, line: 10, baseType: !17, size: 64, offset: 128)
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !{i32 807}
!19 = !{i32 847}
!20 = !{i32 887}
!21 = !{i32 927}
!22 = distinct !DISubprogram(name: "set_info", scope: !5, file: !5, line: 13, type: !23, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: false, unit: !4, variables: !6)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !8, !15, !17}
!25 = !DILocalVariable(name: "p", arg: 1, scope: !22, file: !5, line: 13, type: !8)
!26 = !DILocation(line: 13, column: 30, scope: !22)
!27 = !DILocalVariable(name: "age", arg: 2, scope: !22, file: !5, line: 13, type: !15)
!28 = !DILocation(line: 13, column: 46, scope: !22)
!29 = !DILocalVariable(name: "ID", arg: 3, scope: !22, file: !5, line: 13, type: !17)
!30 = !DILocation(line: 13, column: 65, scope: !22)
!31 = !DILocation(line: 14, column: 11, scope: !22)
!32 = !DILocation(line: 14, column: 2, scope: !22)
!33 = !DILocation(line: 14, column: 5, scope: !22)
!34 = !DILocation(line: 14, column: 9, scope: !22)
!35 = !DILocation(line: 15, column: 9, scope: !22)
!36 = !DILocation(line: 15, column: 2, scope: !22)
!37 = !DILocation(line: 15, column: 5, scope: !22)
!38 = !DILocation(line: 15, column: 7, scope: !22)
!39 = !DILocation(line: 16, column: 1, scope: !22)
!40 = distinct !DISubprogram(name: "print_person", scope: !5, file: !5, line: 18, type: !41, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: false, unit: !4, variables: !6)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !8}
!43 = !DILocalVariable(name: "p", arg: 1, scope: !40, file: !5, line: 18, type: !8)
!44 = !DILocation(line: 18, column: 34, scope: !40)
!45 = !DILocation(line: 19, column: 34, scope: !40)
!46 = !DILocation(line: 19, column: 37, scope: !40)
!47 = !DILocation(line: 19, column: 2, scope: !40)
!48 = !DILocation(line: 20, column: 34, scope: !40)
!49 = !DILocation(line: 20, column: 37, scope: !40)
!50 = !DILocation(line: 20, column: 2, scope: !40)
!51 = !DILocation(line: 21, column: 7, scope: !40)
!52 = !DILocation(line: 22, column: 1, scope: !40)
!53 = distinct !DISubprogram(name: "use_after_free", scope: !5, file: !5, line: 24, type: !54, isLocal: false, isDefinition: true, scopeLine: 24, isOptimized: false, unit: !4, variables: !6)
!54 = !DISubroutineType(types: !55)
!55 = !{null}
!56 = !DILocalVariable(name: "p", scope: !53, file: !5, line: 25, type: !8)
!57 = !DILocation(line: 25, column: 17, scope: !53)
!58 = !DILocation(line: 25, column: 21, scope: !53)
!59 = !DILocation(line: 27, column: 11, scope: !53)
!60 = !DILocation(line: 27, column: 2, scope: !53)
!61 = !DILocation(line: 28, column: 15, scope: !53)
!62 = !DILocation(line: 28, column: 2, scope: !53)
!63 = !DILocation(line: 30, column: 2, scope: !53)
!64 = !DILocalVariable(name: "ID", scope: !53, file: !5, line: 31, type: !65)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DILocation(line: 31, column: 6, scope: !53)
!67 = !DILocation(line: 31, column: 11, scope: !53)
!68 = !DILocation(line: 31, column: 14, scope: !53)
!69 = !DILocation(line: 32, column: 1, scope: !53)
!70 = distinct !DISubprogram(name: "double_free", scope: !5, file: !5, line: 34, type: !54, isLocal: false, isDefinition: true, scopeLine: 34, isOptimized: false, unit: !4, variables: !6)
!71 = !DILocalVariable(name: "p", scope: !70, file: !5, line: 36, type: !8)
!72 = !DILocation(line: 36, column: 17, scope: !70)
!73 = !DILocation(line: 36, column: 21, scope: !70)
!74 = !DILocation(line: 38, column: 11, scope: !70)
!75 = !DILocation(line: 38, column: 2, scope: !70)
!76 = !DILocation(line: 39, column: 15, scope: !70)
!77 = !DILocation(line: 39, column: 2, scope: !70)
!78 = !DILocation(line: 41, column: 2, scope: !70)
!79 = !DILocation(line: 42, column: 7, scope: !70)
!80 = !DILocation(line: 44, column: 1, scope: !70)
!81 = distinct !DISubprogram(name: "invalid_free", scope: !5, file: !5, line: 46, type: !54, isLocal: false, isDefinition: true, scopeLine: 46, isOptimized: false, unit: !4, variables: !6)
!82 = !DILocalVariable(name: "p", scope: !81, file: !5, line: 48, type: !8)
!83 = !DILocation(line: 48, column: 17, scope: !81)
!84 = !DILocation(line: 48, column: 21, scope: !81)
!85 = !DILocation(line: 50, column: 11, scope: !81)
!86 = !DILocation(line: 50, column: 2, scope: !81)
!87 = !DILocation(line: 51, column: 6, scope: !81)
!88 = !DILocation(line: 51, column: 8, scope: !81)
!89 = !DILocation(line: 51, column: 4, scope: !81)
!90 = !DILocation(line: 53, column: 2, scope: !81)
!91 = !DILocation(line: 54, column: 7, scope: !81)
!92 = !DILocation(line: 56, column: 1, scope: !81)
!93 = distinct !DISubprogram(name: "print_usage", scope: !5, file: !5, line: 58, type: !54, isLocal: false, isDefinition: true, scopeLine: 58, isOptimized: false, unit: !4, variables: !6)
!94 = !DILocation(line: 59, column: 2, scope: !93)
!95 = !DILocation(line: 60, column: 2, scope: !93)
!96 = !DILocation(line: 61, column: 2, scope: !93)
!97 = !DILocation(line: 62, column: 2, scope: !93)
!98 = !DILocation(line: 63, column: 2, scope: !93)
!99 = !DILocation(line: 64, column: 1, scope: !93)
!100 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 66, type: !101, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !4, variables: !6)
!101 = !DISubroutineType(types: !102)
!102 = !{!65, !65, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!104 = !DILocalVariable(name: "argc", arg: 1, scope: !100, file: !5, line: 66, type: !65)
!105 = !DILocation(line: 66, column: 15, scope: !100)
!106 = !DILocalVariable(name: "argv", arg: 2, scope: !100, file: !5, line: 66, type: !103)
!107 = !DILocation(line: 66, column: 27, scope: !100)
!108 = !DILocation(line: 69, column: 5, scope: !109)
!109 = distinct !DILexicalBlock(scope: !100, file: !5, line: 69, column: 5)
!110 = !DILocation(line: 69, column: 10, scope: !109)
!111 = !DILocation(line: 69, column: 5, scope: !100)
!112 = !DILocation(line: 70, column: 3, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !5, line: 69, column: 15)
!114 = !DILocation(line: 71, column: 2, scope: !113)
!115 = !DILocation(line: 73, column: 14, scope: !116)
!116 = distinct !DILexicalBlock(scope: !100, file: !5, line: 73, column: 6)
!117 = !DILocation(line: 73, column: 6, scope: !116)
!118 = !DILocation(line: 73, column: 30, scope: !116)
!119 = !DILocation(line: 73, column: 6, scope: !100)
!120 = !DILocation(line: 74, column: 3, scope: !121)
!121 = distinct !DILexicalBlock(scope: !116, file: !5, line: 73, column: 36)
!122 = !DILocation(line: 75, column: 2, scope: !121)
!123 = !DILocation(line: 77, column: 14, scope: !124)
!124 = distinct !DILexicalBlock(scope: !100, file: !5, line: 77, column: 6)
!125 = !DILocation(line: 77, column: 6, scope: !124)
!126 = !DILocation(line: 77, column: 29, scope: !124)
!127 = !DILocation(line: 77, column: 6, scope: !100)
!128 = !DILocation(line: 78, column: 3, scope: !129)
!129 = distinct !DILexicalBlock(scope: !124, file: !5, line: 77, column: 35)
!130 = !DILocation(line: 79, column: 2, scope: !129)
!131 = !DILocation(line: 81, column: 14, scope: !132)
!132 = distinct !DILexicalBlock(scope: !100, file: !5, line: 81, column: 6)
!133 = !DILocation(line: 81, column: 6, scope: !132)
!134 = !DILocation(line: 81, column: 29, scope: !132)
!135 = !DILocation(line: 81, column: 6, scope: !100)
!136 = !DILocation(line: 82, column: 3, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !5, line: 81, column: 35)
!138 = !DILocation(line: 83, column: 2, scope: !137)
!139 = !DILocation(line: 86, column: 3, scope: !140)
!140 = distinct !DILexicalBlock(scope: !132, file: !5, line: 85, column: 7)
!141 = !DILocation(line: 89, column: 2, scope: !100)
