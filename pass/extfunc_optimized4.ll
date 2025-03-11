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
@.str = private unnamed_addr constant [6 x i8] c"UAF.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Your OS does not support Top-Byte Ignore.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Pointer is 0x20000000000000 !\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"\09****** __ptauth_free! Pointer is not Valid! ****** \0A\00", align 1
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
@.str.4 = private unnamed_addr constant [14 x i8] c"/proc/%d/maps\00", align 1
@.str.1.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2.6 = private unnamed_addr constant [5 x i8] c"heap\00", align 1
@.str.3.7 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.4.8 = private unnamed_addr constant [18 x i8] c"Lineeee is = %s \0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%llx\0A \00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Person ID is = %ld \0A\00", align 1
@.str.1.16 = private unnamed_addr constant [21 x i8] c"Person age is = %d \0A\00", align 1
@.str.2.17 = private unnamed_addr constant [86 x i8] c"Dereferencing p dangling pointer. PTAuth should terminate the program at this point.\0A\00", align 1
@.str.3.18 = private unnamed_addr constant [11 x i8] c"buf1:0x%p\0A\00", align 1
@.str.4.19 = private unnamed_addr constant [12 x i8] c"buf2:0x%p\0A\0A\00", align 1
@.str.5.20 = private unnamed_addr constant [9 x i8] c"buf2:%d\0A\00", align 1
@.str.6.21 = private unnamed_addr constant [25 x i8] c"==== Use After Free ===\0A\00", align 1
@.str.7.22 = private unnamed_addr constant [5 x i8] c"hack\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"buf2:%s\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"Free a freed pointer. PTAuth should terminate the program at this point.\0A\00", align 1
@.str.10 = private unnamed_addr constant [79 x i8] c"Invalid free of a pointer. PTAuth should terminate the program at this point.\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Usage: ./stest.arm.elf [OPTIONS]\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"./stest.arm.elf uaf     Trigger the Use-After-Free bug\0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"./stest.arm.elf df      Trigger the Double-Free bug\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"./stest.arm.elf if      Trigger the Invalid-Free bug\0A\00", align 1
@.str.15.23 = private unnamed_addr constant [4 x i8] c"uaf\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"uaf2\00", align 1

; Function Attrs: noinline nounwind optnone
define i32 @checkTBI() #0 {
  %1 = call i32 (i32, ...) @prctl(i32 55, i64 1, i32 0, i32 0, i32 0) #8
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
  %5 = alloca %struct.Metadata*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.Metadata* %1, %struct.Metadata** %5, align 8
  store i8 %2, i8* %6, align 1
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @__xpac(i8* %14)
  store i8* %15, i8** %8, align 8
  store i64 9223372036854775807, i64* %9, align 8
  store i64 1024, i64* %9, align 8
  store i32 1, i32* %10, align 4
  br label %16

; <label>:16:                                     ; preds = %75, %3
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %9, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %78

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %8, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %23, %25
  %27 = srem i64 %26, 16
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

; <label>:29:                                     ; preds = %21
  %30 = load i8*, i8** %8, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %31, %33
  %35 = srem i64 %34, 16
  %36 = sub nsw i64 %35, 1
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %10, align 4
  br label %75

; <label>:41:                                     ; preds = %21
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 0, %44
  %46 = getelementptr i8, i8* %42, i64 %45
  %47 = getelementptr i8, i8* %46, i64 8
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 0, %50
  %52 = getelementptr i8, i8* %48, i64 %51
  %53 = bitcast i8* %52 to %struct.Metadata*
  store %struct.Metadata* %53, %struct.Metadata** %5, align 8
  %54 = load %struct.Metadata*, %struct.Metadata** %5, align 8
  %55 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %11, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i8, i8* %6, align 1
  %60 = call i8* @__autia(i8* %57, i64 %58, i8 %59)
  store i8* %60, i8** %12, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

; <label>:63:                                     ; preds = %41
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %74

; <label>:66:                                     ; preds = %63
  %67 = load i8, i8* %6, align 1
  %68 = zext i8 %67 to i32
  switch i32 %68, label %71 [
    i32 76, label %69
    i32 83, label %70
  ]

; <label>:69:                                     ; preds = %66
  br label %72

; <label>:70:                                     ; preds = %66
  br label %72

; <label>:71:                                     ; preds = %66
  br label %72

; <label>:72:                                     ; preds = %71, %70, %69
  %73 = load i8*, i8** %8, align 8
  ret i8* %73

; <label>:74:                                     ; preds = %63, %41
  br label %75

; <label>:75:                                     ; preds = %74, %29
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %16

; <label>:78:                                     ; preds = %16
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 0) #9
  unreachable
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

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
  %6 = call i64 @time(i64* null) #8
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #8
  %8 = call i32 @rand() #8
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = shl i64 %10, 32
  %12 = call i32 @rand() #8
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #9
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
  %21 = call noalias i8* @malloc(i64 %20) #8
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
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #9
  unreachable

; <label>:12:                                     ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add i64 %14, 8
  %16 = call noalias i8* @calloc(i64 %13, i64 %15) #8
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
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %1
  br label %39

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = getelementptr inbounds i32, i32* %10, i64 -2
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i8* %12 to %struct.Metadata*
  store %struct.Metadata* %13, %struct.Metadata** %3, align 8
  %14 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %15 = ptrtoint %struct.Metadata* %14 to i64
  %16 = load i64, i64* @MASKHIGHBIT, align 8
  %17 = xor i64 %16, -1
  %18 = and i64 %15, %17
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.Metadata*
  store %struct.Metadata* %20, %struct.Metadata** %3, align 8
  %21 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %22 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i8* @__autia(i8* %24, i64 %25, i8 70)
  store i8* %26, i8** %2, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

; <label>:29:                                     ; preds = %8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 0) #9
  unreachable

; <label>:32:                                     ; preds = %8
  %33 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %34 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %33, i32 0, i32 0
  store i64 2, i64* %34, align 8
  %35 = load i8*, i8** %2, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = getelementptr inbounds i32, i32* %36, i64 -2
  %38 = bitcast i32* %37 to i8*
  call void @free(i8* %38) #8
  br label %39

; <label>:39:                                     ; preds = %32, %7
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
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #9
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
  %26 = call i8* @realloc(i8* %24, i64 %25) #8
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
  store i8* %0, i8** %13, align 8
  store i8 %1, i8* %14, align 1
  %20 = load i8*, i8** %13, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %2
  %23 = load i8*, i8** %13, align 8
  store i8* %23, i8** %12, align 8
  br label %124

; <label>:24:                                     ; preds = %2
  %25 = load i8*, i8** %13, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 -8
  %27 = bitcast i8* %26 to %struct.Metadata*
  store %struct.Metadata* %27, %struct.Metadata** %15, align 8
  %28 = load %struct.Metadata*, %struct.Metadata** %15, align 8
  %29 = ptrtoint %struct.Metadata* %28 to i64
  %30 = load i64, i64* @MASKHIGHBIT, align 8
  %31 = xor i64 %30, -1
  %32 = and i64 %29, %31
  %33 = inttoptr i64 %32 to i8*
  %34 = bitcast i8* %33 to %struct.Metadata*
  store %struct.Metadata* %34, %struct.Metadata** %15, align 8
  %35 = load i8*, i8** %13, align 8
  store i8* %35, i8** %16, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i8* @__xpac(i8* %36)
  store i8* %37, i8** %17, align 8
  %38 = load %struct.Metadata*, %struct.Metadata** %15, align 8
  %39 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %18, align 8
  %41 = load i64, i64* %18, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

; <label>:43:                                     ; preds = %24
  %44 = load i8*, i8** %13, align 8
  %45 = load i64, i64* %18, align 8
  %46 = load i8, i8* %14, align 1
  %47 = call i8* @__autia(i8* %44, i64 %45, i8 %46)
  %48 = load i8*, i8** %17, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %43
  %51 = load i8*, i8** %13, align 8
  store i8* %51, i8** %12, align 8
  br label %124

; <label>:52:                                     ; preds = %43, %24
  %53 = load i8*, i8** %13, align 8
  %54 = load %struct.Metadata*, %struct.Metadata** %15, align 8
  %55 = load i8, i8* %14, align 1
  store i8* %53, i8** %3, align 8
  store %struct.Metadata* %54, %struct.Metadata** %4, align 8
  store i8 %55, i8* %5, align 1
  %56 = load i8*, i8** %3, align 8
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = call i8* @__xpac(i8* %57) #8
  store i8* %58, i8** %7, align 8
  store i64 9223372036854775807, i64* %8, align 8
  store i64 1024, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %59

; <label>:59:                                     ; preds = %116, %52
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %8, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %119

; <label>:64:                                     ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %66, %68
  %70 = srem i64 %69, 16
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

; <label>:72:                                     ; preds = %64
  %73 = load i8*, i8** %7, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %74, %76
  %78 = srem i64 %77, 16
  %79 = sub nsw i64 %78, 1
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %9, align 4
  br label %116

; <label>:84:                                     ; preds = %64
  %85 = load i8*, i8** %3, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = sub i64 0, %87
  %89 = getelementptr i8, i8* %85, i64 %88
  %90 = getelementptr i8, i8* %89, i64 8
  store i8* %90, i8** %6, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = sub i64 0, %93
  %95 = getelementptr i8, i8* %91, i64 %94
  %96 = bitcast i8* %95 to %struct.Metadata*
  store %struct.Metadata* %96, %struct.Metadata** %4, align 8
  %97 = load %struct.Metadata*, %struct.Metadata** %4, align 8
  %98 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %10, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i8, i8* %5, align 1
  %103 = call i8* @__autia(i8* %100, i64 %101, i8 %102) #8
  store i8* %103, i8** %11, align 8
  %104 = load i64, i64* %10, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

; <label>:106:                                    ; preds = %84
  %107 = load i8*, i8** %11, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %115

; <label>:109:                                    ; preds = %106
  %110 = load i8, i8* %5, align 1
  %111 = zext i8 %110 to i32
  switch i32 %111, label %114 [
    i32 76, label %112
    i32 83, label %113
  ]

; <label>:112:                                    ; preds = %109
  br label %121

; <label>:113:                                    ; preds = %109
  br label %121

; <label>:114:                                    ; preds = %109
  br label %121

; <label>:115:                                    ; preds = %106, %84
  br label %116

; <label>:116:                                    ; preds = %115, %72
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %59

; <label>:119:                                    ; preds = %59
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #8
  call void @exit(i32 0) #9
  unreachable

; <label>:121:                                    ; preds = %112, %113, %114
  %122 = load i8*, i8** %7, align 8
  store i8* %122, i8** %19, align 8
  %123 = load i8*, i8** %13, align 8
  store i8* %123, i8** %12, align 8
  br label %124

; <label>:124:                                    ; preds = %121, %50, %22
  %125 = load i8*, i8** %12, align 8
  ret i8* %125
}

; Function Attrs: alwaysinline nounwind
define i8* @__GEPCheck(i8*) #2 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Metadata*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.Metadata*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %20, align 8
  %23 = load i8*, i8** %20, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load i64, i64* @MASKLOWBIT, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  store i64 %27, i64* %21, align 8
  %28 = load i64, i64* %21, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %139

; <label>:30:                                     ; preds = %1
  %31 = load i8*, i8** %20, align 8
  store i8* %31, i8** %12, align 8
  store i8 76, i8* %13, align 1
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %12, align 8
  store i8* %35, i8** %11, align 8
  br label %136

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 -8
  %39 = bitcast i8* %38 to %struct.Metadata*
  store %struct.Metadata* %39, %struct.Metadata** %14, align 8
  %40 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %41 = ptrtoint %struct.Metadata* %40 to i64
  %42 = load i64, i64* @MASKHIGHBIT, align 8
  %43 = xor i64 %42, -1
  %44 = and i64 %41, %43
  %45 = inttoptr i64 %44 to i8*
  %46 = bitcast i8* %45 to %struct.Metadata*
  store %struct.Metadata* %46, %struct.Metadata** %14, align 8
  %47 = load i8*, i8** %12, align 8
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i8* @__xpac(i8* %48) #8
  store i8* %49, i8** %16, align 8
  %50 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %51 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %17, align 8
  %53 = load i64, i64* %17, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

; <label>:55:                                     ; preds = %36
  %56 = load i8*, i8** %12, align 8
  %57 = load i64, i64* %17, align 8
  %58 = load i8, i8* %13, align 1
  %59 = call i8* @__autia(i8* %56, i64 %57, i8 %58) #8
  %60 = load i8*, i8** %16, align 8
  %61 = icmp eq i8* %59, %60
  br i1 %61, label %62, label %64

; <label>:62:                                     ; preds = %55
  %63 = load i8*, i8** %12, align 8
  store i8* %63, i8** %11, align 8
  br label %136

; <label>:64:                                     ; preds = %55, %36
  %65 = load i8*, i8** %12, align 8
  %66 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %67 = load i8, i8* %13, align 1
  store i8* %65, i8** %2, align 8
  store %struct.Metadata* %66, %struct.Metadata** %3, align 8
  store i8 %67, i8* %4, align 1
  %68 = load i8*, i8** %2, align 8
  store i8* %68, i8** %5, align 8
  %69 = load i8*, i8** %2, align 8
  %70 = call i8* @__xpac(i8* %69) #8
  store i8* %70, i8** %6, align 8
  store i64 9223372036854775807, i64* %7, align 8
  store i64 1024, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %71

; <label>:71:                                     ; preds = %128, %64
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %7, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %131

; <label>:76:                                     ; preds = %71
  %77 = load i8*, i8** %6, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %78, %80
  %82 = srem i64 %81, 16
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

; <label>:84:                                     ; preds = %76
  %85 = load i8*, i8** %6, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %86, %88
  %90 = srem i64 %89, 16
  %91 = sub nsw i64 %90, 1
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %8, align 4
  br label %128

; <label>:96:                                     ; preds = %76
  %97 = load i8*, i8** %2, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = sub i64 0, %99
  %101 = getelementptr i8, i8* %97, i64 %100
  %102 = getelementptr i8, i8* %101, i64 8
  store i8* %102, i8** %5, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 0, %105
  %107 = getelementptr i8, i8* %103, i64 %106
  %108 = bitcast i8* %107 to %struct.Metadata*
  store %struct.Metadata* %108, %struct.Metadata** %3, align 8
  %109 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %110 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %9, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i8, i8* %4, align 1
  %115 = call i8* @__autia(i8* %112, i64 %113, i8 %114) #8
  store i8* %115, i8** %10, align 8
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

; <label>:118:                                    ; preds = %96
  %119 = load i8*, i8** %10, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %127

; <label>:121:                                    ; preds = %118
  %122 = load i8, i8* %4, align 1
  %123 = zext i8 %122 to i32
  switch i32 %123, label %126 [
    i32 76, label %124
    i32 83, label %125
  ]

; <label>:124:                                    ; preds = %121
  br label %133

; <label>:125:                                    ; preds = %121
  br label %133

; <label>:126:                                    ; preds = %121
  br label %133

; <label>:127:                                    ; preds = %118, %96
  br label %128

; <label>:128:                                    ; preds = %127, %84
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %71

; <label>:131:                                    ; preds = %71
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #8
  call void @exit(i32 0) #9
  unreachable

; <label>:133:                                    ; preds = %126, %125, %124
  %134 = load i8*, i8** %6, align 8
  store i8* %134, i8** %18, align 8
  %135 = load i8*, i8** %12, align 8
  store i8* %135, i8** %11, align 8
  br label %136

; <label>:136:                                    ; preds = %34, %62, %133
  %137 = load i8*, i8** %11, align 8
  store i8* %137, i8** %22, align 8
  %138 = load i8*, i8** %20, align 8
  store i8* %138, i8** %19, align 8
  br label %141

; <label>:139:                                    ; preds = %1
  %140 = load i8*, i8** %20, align 8
  store i8* %140, i8** %19, align 8
  br label %141

; <label>:141:                                    ; preds = %139, %136
  %142 = load i8*, i8** %19, align 8
  ret i8* %142
}

; Function Attrs: alwaysinline nounwind
define i8* @__nestedGEPCheck(i8*) #2 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Metadata*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.Metadata*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %20, align 8
  %23 = load i8*, i8** %20, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load i64, i64* @MASKLOWBIT, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  store i64 %27, i64* %21, align 8
  %28 = load i64, i64* %21, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %139

; <label>:30:                                     ; preds = %1
  %31 = load i8*, i8** %20, align 8
  store i8* %31, i8** %12, align 8
  store i8 76, i8* %13, align 1
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %12, align 8
  store i8* %35, i8** %11, align 8
  br label %136

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 -8
  %39 = bitcast i8* %38 to %struct.Metadata*
  store %struct.Metadata* %39, %struct.Metadata** %14, align 8
  %40 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %41 = ptrtoint %struct.Metadata* %40 to i64
  %42 = load i64, i64* @MASKHIGHBIT, align 8
  %43 = xor i64 %42, -1
  %44 = and i64 %41, %43
  %45 = inttoptr i64 %44 to i8*
  %46 = bitcast i8* %45 to %struct.Metadata*
  store %struct.Metadata* %46, %struct.Metadata** %14, align 8
  %47 = load i8*, i8** %12, align 8
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i8* @__xpac(i8* %48) #8
  store i8* %49, i8** %16, align 8
  %50 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %51 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %17, align 8
  %53 = load i64, i64* %17, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

; <label>:55:                                     ; preds = %36
  %56 = load i8*, i8** %12, align 8
  %57 = load i64, i64* %17, align 8
  %58 = load i8, i8* %13, align 1
  %59 = call i8* @__autia(i8* %56, i64 %57, i8 %58) #8
  %60 = load i8*, i8** %16, align 8
  %61 = icmp eq i8* %59, %60
  br i1 %61, label %62, label %64

; <label>:62:                                     ; preds = %55
  %63 = load i8*, i8** %12, align 8
  store i8* %63, i8** %11, align 8
  br label %136

; <label>:64:                                     ; preds = %55, %36
  %65 = load i8*, i8** %12, align 8
  %66 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %67 = load i8, i8* %13, align 1
  store i8* %65, i8** %2, align 8
  store %struct.Metadata* %66, %struct.Metadata** %3, align 8
  store i8 %67, i8* %4, align 1
  %68 = load i8*, i8** %2, align 8
  store i8* %68, i8** %5, align 8
  %69 = load i8*, i8** %2, align 8
  %70 = call i8* @__xpac(i8* %69) #8
  store i8* %70, i8** %6, align 8
  store i64 9223372036854775807, i64* %7, align 8
  store i64 1024, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %71

; <label>:71:                                     ; preds = %128, %64
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %7, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %131

; <label>:76:                                     ; preds = %71
  %77 = load i8*, i8** %6, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %78, %80
  %82 = srem i64 %81, 16
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

; <label>:84:                                     ; preds = %76
  %85 = load i8*, i8** %6, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %86, %88
  %90 = srem i64 %89, 16
  %91 = sub nsw i64 %90, 1
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %8, align 4
  br label %128

; <label>:96:                                     ; preds = %76
  %97 = load i8*, i8** %2, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = sub i64 0, %99
  %101 = getelementptr i8, i8* %97, i64 %100
  %102 = getelementptr i8, i8* %101, i64 8
  store i8* %102, i8** %5, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 0, %105
  %107 = getelementptr i8, i8* %103, i64 %106
  %108 = bitcast i8* %107 to %struct.Metadata*
  store %struct.Metadata* %108, %struct.Metadata** %3, align 8
  %109 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %110 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %9, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i8, i8* %4, align 1
  %115 = call i8* @__autia(i8* %112, i64 %113, i8 %114) #8
  store i8* %115, i8** %10, align 8
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

; <label>:118:                                    ; preds = %96
  %119 = load i8*, i8** %10, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %127

; <label>:121:                                    ; preds = %118
  %122 = load i8, i8* %4, align 1
  %123 = zext i8 %122 to i32
  switch i32 %123, label %126 [
    i32 76, label %124
    i32 83, label %125
  ]

; <label>:124:                                    ; preds = %121
  br label %133

; <label>:125:                                    ; preds = %121
  br label %133

; <label>:126:                                    ; preds = %121
  br label %133

; <label>:127:                                    ; preds = %118, %96
  br label %128

; <label>:128:                                    ; preds = %127, %84
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %71

; <label>:131:                                    ; preds = %71
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #8
  call void @exit(i32 0) #9
  unreachable

; <label>:133:                                    ; preds = %126, %125, %124
  %134 = load i8*, i8** %6, align 8
  store i8* %134, i8** %18, align 8
  %135 = load i8*, i8** %12, align 8
  store i8* %135, i8** %11, align 8
  br label %136

; <label>:136:                                    ; preds = %34, %62, %133
  %137 = load i8*, i8** %11, align 8
  store i8* %137, i8** %22, align 8
  %138 = load i8*, i8** %20, align 8
  store i8* %138, i8** %19, align 8
  br label %141

; <label>:139:                                    ; preds = %1
  %140 = load i8*, i8** %20, align 8
  store i8* %140, i8** %19, align 8
  br label %141

; <label>:141:                                    ; preds = %139, %136
  %142 = load i8*, i8** %19, align 8
  ret i8* %142
}

; Function Attrs: alwaysinline nounwind
define i8* @__loadCheck(i8*) #2 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Metadata*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.Metadata*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %20, align 8
  %23 = load i8*, i8** %20, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load i64, i64* @MASKLOWBIT, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  store i64 %27, i64* %21, align 8
  %28 = load i64, i64* %21, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %139

; <label>:30:                                     ; preds = %1
  %31 = load i8*, i8** %20, align 8
  store i8* %31, i8** %12, align 8
  store i8 76, i8* %13, align 1
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %12, align 8
  store i8* %35, i8** %11, align 8
  br label %136

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 -8
  %39 = bitcast i8* %38 to %struct.Metadata*
  store %struct.Metadata* %39, %struct.Metadata** %14, align 8
  %40 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %41 = ptrtoint %struct.Metadata* %40 to i64
  %42 = load i64, i64* @MASKHIGHBIT, align 8
  %43 = xor i64 %42, -1
  %44 = and i64 %41, %43
  %45 = inttoptr i64 %44 to i8*
  %46 = bitcast i8* %45 to %struct.Metadata*
  store %struct.Metadata* %46, %struct.Metadata** %14, align 8
  %47 = load i8*, i8** %12, align 8
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i8* @__xpac(i8* %48) #8
  store i8* %49, i8** %16, align 8
  %50 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %51 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %17, align 8
  %53 = load i64, i64* %17, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

; <label>:55:                                     ; preds = %36
  %56 = load i8*, i8** %12, align 8
  %57 = load i64, i64* %17, align 8
  %58 = load i8, i8* %13, align 1
  %59 = call i8* @__autia(i8* %56, i64 %57, i8 %58) #8
  %60 = load i8*, i8** %16, align 8
  %61 = icmp eq i8* %59, %60
  br i1 %61, label %62, label %64

; <label>:62:                                     ; preds = %55
  %63 = load i8*, i8** %12, align 8
  store i8* %63, i8** %11, align 8
  br label %136

; <label>:64:                                     ; preds = %55, %36
  %65 = load i8*, i8** %12, align 8
  %66 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %67 = load i8, i8* %13, align 1
  store i8* %65, i8** %2, align 8
  store %struct.Metadata* %66, %struct.Metadata** %3, align 8
  store i8 %67, i8* %4, align 1
  %68 = load i8*, i8** %2, align 8
  store i8* %68, i8** %5, align 8
  %69 = load i8*, i8** %2, align 8
  %70 = call i8* @__xpac(i8* %69) #8
  store i8* %70, i8** %6, align 8
  store i64 9223372036854775807, i64* %7, align 8
  store i64 1024, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %71

; <label>:71:                                     ; preds = %128, %64
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %7, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %131

; <label>:76:                                     ; preds = %71
  %77 = load i8*, i8** %6, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %78, %80
  %82 = srem i64 %81, 16
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

; <label>:84:                                     ; preds = %76
  %85 = load i8*, i8** %6, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %86, %88
  %90 = srem i64 %89, 16
  %91 = sub nsw i64 %90, 1
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %8, align 4
  br label %128

; <label>:96:                                     ; preds = %76
  %97 = load i8*, i8** %2, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = sub i64 0, %99
  %101 = getelementptr i8, i8* %97, i64 %100
  %102 = getelementptr i8, i8* %101, i64 8
  store i8* %102, i8** %5, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 0, %105
  %107 = getelementptr i8, i8* %103, i64 %106
  %108 = bitcast i8* %107 to %struct.Metadata*
  store %struct.Metadata* %108, %struct.Metadata** %3, align 8
  %109 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %110 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %9, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i8, i8* %4, align 1
  %115 = call i8* @__autia(i8* %112, i64 %113, i8 %114) #8
  store i8* %115, i8** %10, align 8
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

; <label>:118:                                    ; preds = %96
  %119 = load i8*, i8** %10, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %127

; <label>:121:                                    ; preds = %118
  %122 = load i8, i8* %4, align 1
  %123 = zext i8 %122 to i32
  switch i32 %123, label %126 [
    i32 76, label %124
    i32 83, label %125
  ]

; <label>:124:                                    ; preds = %121
  br label %133

; <label>:125:                                    ; preds = %121
  br label %133

; <label>:126:                                    ; preds = %121
  br label %133

; <label>:127:                                    ; preds = %118, %96
  br label %128

; <label>:128:                                    ; preds = %127, %84
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %71

; <label>:131:                                    ; preds = %71
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #8
  call void @exit(i32 0) #9
  unreachable

; <label>:133:                                    ; preds = %126, %125, %124
  %134 = load i8*, i8** %6, align 8
  store i8* %134, i8** %18, align 8
  %135 = load i8*, i8** %12, align 8
  store i8* %135, i8** %11, align 8
  br label %136

; <label>:136:                                    ; preds = %34, %62, %133
  %137 = load i8*, i8** %11, align 8
  store i8* %137, i8** %22, align 8
  %138 = load i8*, i8** %20, align 8
  store i8* %138, i8** %19, align 8
  br label %141

; <label>:139:                                    ; preds = %1
  %140 = load i8*, i8** %20, align 8
  store i8* %140, i8** %19, align 8
  br label %141

; <label>:141:                                    ; preds = %139, %136
  %142 = load i8*, i8** %19, align 8
  ret i8* %142
}

; Function Attrs: alwaysinline nounwind
define i8* @__storeCheck(i8*) #2 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Metadata*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.Metadata*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %20, align 8
  %23 = load i8*, i8** %20, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load i64, i64* @MASKLOWBIT, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  store i64 %27, i64* %21, align 8
  %28 = load i64, i64* %21, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %139

; <label>:30:                                     ; preds = %1
  %31 = load i8*, i8** %20, align 8
  store i8* %31, i8** %12, align 8
  store i8 83, i8* %13, align 1
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %12, align 8
  store i8* %35, i8** %11, align 8
  br label %136

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 -8
  %39 = bitcast i8* %38 to %struct.Metadata*
  store %struct.Metadata* %39, %struct.Metadata** %14, align 8
  %40 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %41 = ptrtoint %struct.Metadata* %40 to i64
  %42 = load i64, i64* @MASKHIGHBIT, align 8
  %43 = xor i64 %42, -1
  %44 = and i64 %41, %43
  %45 = inttoptr i64 %44 to i8*
  %46 = bitcast i8* %45 to %struct.Metadata*
  store %struct.Metadata* %46, %struct.Metadata** %14, align 8
  %47 = load i8*, i8** %12, align 8
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i8* @__xpac(i8* %48) #8
  store i8* %49, i8** %16, align 8
  %50 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %51 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %17, align 8
  %53 = load i64, i64* %17, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

; <label>:55:                                     ; preds = %36
  %56 = load i8*, i8** %12, align 8
  %57 = load i64, i64* %17, align 8
  %58 = load i8, i8* %13, align 1
  %59 = call i8* @__autia(i8* %56, i64 %57, i8 %58) #8
  %60 = load i8*, i8** %16, align 8
  %61 = icmp eq i8* %59, %60
  br i1 %61, label %62, label %64

; <label>:62:                                     ; preds = %55
  %63 = load i8*, i8** %12, align 8
  store i8* %63, i8** %11, align 8
  br label %136

; <label>:64:                                     ; preds = %55, %36
  %65 = load i8*, i8** %12, align 8
  %66 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %67 = load i8, i8* %13, align 1
  store i8* %65, i8** %2, align 8
  store %struct.Metadata* %66, %struct.Metadata** %3, align 8
  store i8 %67, i8* %4, align 1
  %68 = load i8*, i8** %2, align 8
  store i8* %68, i8** %5, align 8
  %69 = load i8*, i8** %2, align 8
  %70 = call i8* @__xpac(i8* %69) #8
  store i8* %70, i8** %6, align 8
  store i64 9223372036854775807, i64* %7, align 8
  store i64 1024, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %71

; <label>:71:                                     ; preds = %128, %64
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %7, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %131

; <label>:76:                                     ; preds = %71
  %77 = load i8*, i8** %6, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %78, %80
  %82 = srem i64 %81, 16
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

; <label>:84:                                     ; preds = %76
  %85 = load i8*, i8** %6, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %86, %88
  %90 = srem i64 %89, 16
  %91 = sub nsw i64 %90, 1
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %8, align 4
  br label %128

; <label>:96:                                     ; preds = %76
  %97 = load i8*, i8** %2, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = sub i64 0, %99
  %101 = getelementptr i8, i8* %97, i64 %100
  %102 = getelementptr i8, i8* %101, i64 8
  store i8* %102, i8** %5, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 0, %105
  %107 = getelementptr i8, i8* %103, i64 %106
  %108 = bitcast i8* %107 to %struct.Metadata*
  store %struct.Metadata* %108, %struct.Metadata** %3, align 8
  %109 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %110 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %9, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i8, i8* %4, align 1
  %115 = call i8* @__autia(i8* %112, i64 %113, i8 %114) #8
  store i8* %115, i8** %10, align 8
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

; <label>:118:                                    ; preds = %96
  %119 = load i8*, i8** %10, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %127

; <label>:121:                                    ; preds = %118
  %122 = load i8, i8* %4, align 1
  %123 = zext i8 %122 to i32
  switch i32 %123, label %126 [
    i32 76, label %124
    i32 83, label %125
  ]

; <label>:124:                                    ; preds = %121
  br label %133

; <label>:125:                                    ; preds = %121
  br label %133

; <label>:126:                                    ; preds = %121
  br label %133

; <label>:127:                                    ; preds = %118, %96
  br label %128

; <label>:128:                                    ; preds = %127, %84
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %71

; <label>:131:                                    ; preds = %71
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #8
  call void @exit(i32 0) #9
  unreachable

; <label>:133:                                    ; preds = %126, %125, %124
  %134 = load i8*, i8** %6, align 8
  store i8* %134, i8** %18, align 8
  %135 = load i8*, i8** %12, align 8
  store i8* %135, i8** %11, align 8
  br label %136

; <label>:136:                                    ; preds = %34, %62, %133
  %137 = load i8*, i8** %11, align 8
  store i8* %137, i8** %22, align 8
  %138 = load i8*, i8** %22, align 8
  store i8* %138, i8** %19, align 8
  br label %141

; <label>:139:                                    ; preds = %1
  %140 = load i8*, i8** %20, align 8
  store i8* %140, i8** %19, align 8
  br label %141

; <label>:141:                                    ; preds = %139, %136
  %142 = load i8*, i8** %19, align 8
  ret i8* %142
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
  %9 = call i32 @getpid() #8
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @filename, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %9) #8
  %11 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @filename, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.5, i32 0, i32 0))
  store %struct._IO_FILE* %11, %struct._IO_FILE** @file, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.6, i32 0, i32 0), i8** %3, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.7, i32 0, i32 0), i8** %4, align 8
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
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.8, i32 0, i32 0), i8* %18)
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i32 0, i32 0
  %21 = load i8*, i8** %3, align 8
  %22 = call i8* @strstr(i8* %20, i8* %21) #10
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %45

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i32 0, i32 0
  %26 = call i8* @strtok(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strtoul(i8* %27, i8** %7, i32 16) #8
  store i64 %28, i64* @address_start, align 8
  %29 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)) #8
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strtoul(i8* %30, i8** %7, i32 16) #8
  store i64 %31, i64* @address_end, align 8
  %32 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)) #8
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
  %50 = call i8* @strtok(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strtoul(i8* %51, i8** %7, i32 16) #8
  store i64 %52, i64* @address_start, align 8
  %53 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)) #8
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strtoul(i8* %54, i8** %7, i32 16) #8
  store i64 %55, i64* @address_end, align 8
  %56 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)) #8
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
  %72 = call i8* @strncpy(i8* %70, i8* %71, i64 512) #8
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
  call void asm sideeffect "eor x0,x0,#0x2\0A", ""() #8, !srcloc !18
  call void asm sideeffect "eor x0,x0,#0x3\0A", ""() #8, !srcloc !19
  call void asm sideeffect "eor x0,x0,#0x2\0A", ""() #8, !srcloc !20
  call void asm sideeffect "eor x0,x0,#0x4\0A", ""() #8, !srcloc !21
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
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i64 %5), !dbg !47
  %7 = load %struct.person*, %struct.person** %2, align 8, !dbg !48
  %8 = getelementptr inbounds %struct.person, %struct.person* %7, i32 0, i32 1, !dbg !49
  %9 = load i32, i32* %8, align 8, !dbg !49
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.16, i32 0, i32 0), i32 %9), !dbg !50
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
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2.17, i32 0, i32 0)), !dbg !63
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
define void @use_after_free2() #0 !dbg !70 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i8** %2, metadata !73, metadata !DIExpression()), !dbg !74
  %3 = call i8* @__ptauth_malloc(i64 32)
  store i8* %3, i8** %1, align 8, !dbg !75
  %4 = load i8*, i8** %1, align 8, !dbg !76
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.18, i32 0, i32 0), i8* %4), !dbg !77
  %6 = bitcast i8** %1 to i8*, !dbg !78
  %7 = call i8* @__loadCheck(i8* %6), !dbg !78
  %8 = bitcast i8* %7 to i8**, !dbg !78
  %9 = load i8*, i8** %8, align 8, !dbg !78
  call void @__ptauth_free(i8* %9)
  %10 = call i8* @__ptauth_malloc(i64 32)
  store i8* %10, i8** %2, align 8, !dbg !79
  %11 = load i8*, i8** %2, align 8, !dbg !80
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.19, i32 0, i32 0), i8* %11), !dbg !81
  %13 = load i8*, i8** %2, align 8, !dbg !82
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 32, i32 1, i1 false), !dbg !83
  %14 = load i8*, i8** %2, align 8, !dbg !84
  %15 = load i8, i8* %14, align 1, !dbg !85
  %16 = zext i8 %15 to i32, !dbg !85
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5.20, i32 0, i32 0), i32 %16), !dbg !86
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6.21, i32 0, i32 0)), !dbg !87
  %19 = bitcast i8** %1 to i8*, !dbg !88
  %20 = call i8* @__loadCheck(i8* %19), !dbg !88
  %21 = bitcast i8* %20 to i8**, !dbg !88
  %22 = load i8*, i8** %21, align 8, !dbg !88
  %23 = call i8* @strncpy(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.22, i32 0, i32 0), i64 5) #8, !dbg !89
  %24 = bitcast i8** %21 to i8*, !dbg !90
  %25 = call i8* @__loadCheck(i8* %24), !dbg !90
  %26 = load i8*, i8** %2, align 8, !dbg !90
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* %26), !dbg !91
  %28 = bitcast i8** %2 to i8*, !dbg !92
  %29 = call i8* @__loadCheck(i8* %28), !dbg !92
  %30 = bitcast i8* %29 to i8**, !dbg !92
  %31 = load i8*, i8** %30, align 8, !dbg !92
  call void @__ptauth_free(i8* %31)
  ret void, !dbg !93
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: noinline nounwind optnone
define void @double_free() #0 !dbg !94 {
  %1 = alloca %struct.person*, align 8
  call void @llvm.dbg.declare(metadata %struct.person** %1, metadata !95, metadata !DIExpression()), !dbg !96
  %2 = call i8* @__ptauth_malloc(i64 24)
  %3 = bitcast i8* %2 to %struct.person*, !dbg !97
  store %struct.person* %3, %struct.person** %1, align 8, !dbg !96
  %4 = bitcast %struct.person** %1 to i8*, !dbg !98
  %5 = call i8* @__loadCheck(i8* %4), !dbg !98
  %6 = bitcast i8* %5 to %struct.person**, !dbg !98
  %7 = load %struct.person*, %struct.person** %6, align 8, !dbg !98
  call void @set_info(%struct.person* %7, i32 25, i64 50), !dbg !99
  %8 = bitcast %struct.person** %1 to i8*, !dbg !100
  %9 = call i8* @__loadCheck(i8* %8), !dbg !100
  %10 = bitcast i8* %9 to %struct.person**, !dbg !100
  %11 = load %struct.person*, %struct.person** %10, align 8, !dbg !100
  call void @print_person(%struct.person* %11), !dbg !101
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i32 0, i32 0)), !dbg !102
  %13 = bitcast %struct.person** %1 to i8*, !dbg !103
  %14 = call i8* @__loadCheck(i8* %13), !dbg !103
  %15 = bitcast i8* %14 to %struct.person**, !dbg !103
  %16 = load %struct.person*, %struct.person** %15, align 8, !dbg !103
  %17 = bitcast %struct.person* %16 to i8*, !dbg !103
  call void @__ptauth_free(i8* %17)
  ret void, !dbg !104
}

; Function Attrs: noinline nounwind optnone
define void @invalid_free() #0 !dbg !105 {
  %1 = alloca %struct.person*, align 8
  call void @llvm.dbg.declare(metadata %struct.person** %1, metadata !106, metadata !DIExpression()), !dbg !107
  %2 = call i8* @__ptauth_malloc(i64 24)
  %3 = bitcast i8* %2 to %struct.person*, !dbg !108
  store %struct.person* %3, %struct.person** %1, align 8, !dbg !107
  %4 = bitcast %struct.person** %1 to i8*, !dbg !109
  %5 = call i8* @__loadCheck(i8* %4), !dbg !109
  %6 = bitcast i8* %5 to %struct.person**, !dbg !109
  %7 = load %struct.person*, %struct.person** %6, align 8, !dbg !109
  call void @set_info(%struct.person* %7, i32 25, i64 50), !dbg !110
  %8 = load %struct.person*, %struct.person** %1, align 8, !dbg !111
  %9 = bitcast %struct.person* %8 to i8*, !dbg !112
  %10 = call i8* @__GEPCheck(i8* %9), !dbg !112
  %11 = bitcast i8* %10 to %struct.person*, !dbg !112
  %12 = getelementptr inbounds %struct.person, %struct.person* %11, i64 1, !dbg !112
  store %struct.person* %12, %struct.person** %1, align 8, !dbg !113
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.10, i32 0, i32 0)), !dbg !114
  %14 = load %struct.person*, %struct.person** %1, align 8, !dbg !115
  %15 = bitcast %struct.person* %14 to i8*, !dbg !115
  call void @__ptauth_free(i8* %15)
  ret void, !dbg !116
}

; Function Attrs: noinline nounwind optnone
define void @print_usage() #0 !dbg !117 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0)), !dbg !118
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i32 0, i32 0)), !dbg !119
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i32 0, i32 0)), !dbg !120
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0)), !dbg !121
  call void @exit(i32 0) #9, !dbg !122
  unreachable, !dbg !122
                                                  ; No predecessors!
  ret void, !dbg !123
}

; Function Attrs: noinline nounwind optnone
define i32 @main(i32, i8**) #0 !dbg !124 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !128, metadata !DIExpression()), !dbg !129
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !130, metadata !DIExpression()), !dbg !131
  %6 = load i32, i32* %4, align 4, !dbg !132
  %7 = icmp slt i32 %6, 2, !dbg !134
  br i1 %7, label %8, label %9, !dbg !135

; <label>:8:                                      ; preds = %2
  call void @print_usage(), !dbg !136
  br label %9, !dbg !138

; <label>:9:                                      ; preds = %8, %2
  %10 = load i8**, i8*** %5, align 8, !dbg !139
  %11 = getelementptr inbounds i8*, i8** %10, i64 1, !dbg !139
  %12 = load i8*, i8** %11, align 8, !dbg !139
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.23, i32 0, i32 0)) #10, !dbg !141
  %14 = icmp eq i32 %13, 0, !dbg !142
  br i1 %14, label %15, label %16, !dbg !143

; <label>:15:                                     ; preds = %9
  call void @use_after_free(), !dbg !144
  br label %16, !dbg !146

; <label>:16:                                     ; preds = %15, %9
  %17 = load i8**, i8*** %5, align 8, !dbg !147
  %18 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !147
  %19 = load i8*, i8** %18, align 8, !dbg !147
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #10, !dbg !149
  %21 = icmp eq i32 %20, 0, !dbg !150
  br i1 %21, label %22, label %23, !dbg !151

; <label>:22:                                     ; preds = %16
  call void @double_free(), !dbg !152
  br label %23, !dbg !154

; <label>:23:                                     ; preds = %22, %16
  %24 = load i8**, i8*** %5, align 8, !dbg !155
  %25 = getelementptr inbounds i8*, i8** %24, i64 1, !dbg !155
  %26 = load i8*, i8** %25, align 8, !dbg !155
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0)) #10, !dbg !157
  %28 = icmp eq i32 %27, 0, !dbg !158
  br i1 %28, label %29, label %30, !dbg !159

; <label>:29:                                     ; preds = %23
  call void @invalid_free(), !dbg !160
  br label %30, !dbg !162

; <label>:30:                                     ; preds = %29, %23
  %31 = load i8**, i8*** %5, align 8, !dbg !163
  %32 = getelementptr inbounds i8*, i8** %31, i64 1, !dbg !163
  %33 = load i8*, i8** %32, align 8, !dbg !163
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)) #10, !dbg !165
  %35 = icmp eq i32 %34, 0, !dbg !166
  br i1 %35, label %36, label %37, !dbg !167

; <label>:36:                                     ; preds = %30
  call void @use_after_free2(), !dbg !168
  br label %38, !dbg !170

; <label>:37:                                     ; preds = %30
  call void @print_usage(), !dbg !171
  br label %38

; <label>:38:                                     ; preds = %37, %36
  ret i32 0, !dbg !173
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
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }

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
!7 = !{!8, !12}
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
!70 = distinct !DISubprogram(name: "use_after_free2", scope: !5, file: !5, line: 34, type: !54, isLocal: false, isDefinition: true, scopeLine: 34, isOptimized: false, unit: !4, variables: !6)
!71 = !DILocalVariable(name: "buf1", scope: !70, file: !5, line: 35, type: !12)
!72 = !DILocation(line: 35, column: 8, scope: !70)
!73 = !DILocalVariable(name: "buf2", scope: !70, file: !5, line: 36, type: !12)
!74 = !DILocation(line: 36, column: 11, scope: !70)
!75 = !DILocation(line: 38, column: 10, scope: !70)
!76 = !DILocation(line: 39, column: 27, scope: !70)
!77 = !DILocation(line: 39, column: 5, scope: !70)
!78 = !DILocation(line: 40, column: 10, scope: !70)
!79 = !DILocation(line: 43, column: 10, scope: !70)
!80 = !DILocation(line: 44, column: 29, scope: !70)
!81 = !DILocation(line: 44, column: 5, scope: !70)
!82 = !DILocation(line: 47, column: 12, scope: !70)
!83 = !DILocation(line: 47, column: 5, scope: !70)
!84 = !DILocation(line: 48, column: 26, scope: !70)
!85 = !DILocation(line: 48, column: 25, scope: !70)
!86 = !DILocation(line: 48, column: 5, scope: !70)
!87 = !DILocation(line: 51, column: 5, scope: !70)
!88 = !DILocation(line: 52, column: 13, scope: !70)
!89 = !DILocation(line: 52, column: 5, scope: !70)
!90 = !DILocation(line: 53, column: 27, scope: !70)
!91 = !DILocation(line: 53, column: 5, scope: !70)
!92 = !DILocation(line: 55, column: 10, scope: !70)
!93 = !DILocation(line: 56, column: 2, scope: !70)
!94 = distinct !DISubprogram(name: "double_free", scope: !5, file: !5, line: 60, type: !54, isLocal: false, isDefinition: true, scopeLine: 60, isOptimized: false, unit: !4, variables: !6)
!95 = !DILocalVariable(name: "p", scope: !94, file: !5, line: 62, type: !8)
!96 = !DILocation(line: 62, column: 17, scope: !94)
!97 = !DILocation(line: 62, column: 21, scope: !94)
!98 = !DILocation(line: 64, column: 11, scope: !94)
!99 = !DILocation(line: 64, column: 2, scope: !94)
!100 = !DILocation(line: 65, column: 15, scope: !94)
!101 = !DILocation(line: 65, column: 2, scope: !94)
!102 = !DILocation(line: 67, column: 2, scope: !94)
!103 = !DILocation(line: 68, column: 7, scope: !94)
!104 = !DILocation(line: 70, column: 1, scope: !94)
!105 = distinct !DISubprogram(name: "invalid_free", scope: !5, file: !5, line: 72, type: !54, isLocal: false, isDefinition: true, scopeLine: 72, isOptimized: false, unit: !4, variables: !6)
!106 = !DILocalVariable(name: "p", scope: !105, file: !5, line: 74, type: !8)
!107 = !DILocation(line: 74, column: 17, scope: !105)
!108 = !DILocation(line: 74, column: 21, scope: !105)
!109 = !DILocation(line: 76, column: 11, scope: !105)
!110 = !DILocation(line: 76, column: 2, scope: !105)
!111 = !DILocation(line: 77, column: 6, scope: !105)
!112 = !DILocation(line: 77, column: 8, scope: !105)
!113 = !DILocation(line: 77, column: 4, scope: !105)
!114 = !DILocation(line: 79, column: 2, scope: !105)
!115 = !DILocation(line: 80, column: 7, scope: !105)
!116 = !DILocation(line: 82, column: 1, scope: !105)
!117 = distinct !DISubprogram(name: "print_usage", scope: !5, file: !5, line: 84, type: !54, isLocal: false, isDefinition: true, scopeLine: 84, isOptimized: false, unit: !4, variables: !6)
!118 = !DILocation(line: 85, column: 2, scope: !117)
!119 = !DILocation(line: 86, column: 2, scope: !117)
!120 = !DILocation(line: 87, column: 2, scope: !117)
!121 = !DILocation(line: 88, column: 2, scope: !117)
!122 = !DILocation(line: 89, column: 2, scope: !117)
!123 = !DILocation(line: 90, column: 1, scope: !117)
!124 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 92, type: !125, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !4, variables: !6)
!125 = !DISubroutineType(types: !126)
!126 = !{!65, !65, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!128 = !DILocalVariable(name: "argc", arg: 1, scope: !124, file: !5, line: 92, type: !65)
!129 = !DILocation(line: 92, column: 15, scope: !124)
!130 = !DILocalVariable(name: "argv", arg: 2, scope: !124, file: !5, line: 92, type: !127)
!131 = !DILocation(line: 92, column: 27, scope: !124)
!132 = !DILocation(line: 95, column: 5, scope: !133)
!133 = distinct !DILexicalBlock(scope: !124, file: !5, line: 95, column: 5)
!134 = !DILocation(line: 95, column: 10, scope: !133)
!135 = !DILocation(line: 95, column: 5, scope: !124)
!136 = !DILocation(line: 96, column: 3, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !5, line: 95, column: 15)
!138 = !DILocation(line: 97, column: 2, scope: !137)
!139 = !DILocation(line: 99, column: 14, scope: !140)
!140 = distinct !DILexicalBlock(scope: !124, file: !5, line: 99, column: 6)
!141 = !DILocation(line: 99, column: 6, scope: !140)
!142 = !DILocation(line: 99, column: 30, scope: !140)
!143 = !DILocation(line: 99, column: 6, scope: !124)
!144 = !DILocation(line: 100, column: 3, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !5, line: 99, column: 36)
!146 = !DILocation(line: 101, column: 2, scope: !145)
!147 = !DILocation(line: 103, column: 14, scope: !148)
!148 = distinct !DILexicalBlock(scope: !124, file: !5, line: 103, column: 6)
!149 = !DILocation(line: 103, column: 6, scope: !148)
!150 = !DILocation(line: 103, column: 29, scope: !148)
!151 = !DILocation(line: 103, column: 6, scope: !124)
!152 = !DILocation(line: 104, column: 3, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !5, line: 103, column: 35)
!154 = !DILocation(line: 105, column: 2, scope: !153)
!155 = !DILocation(line: 107, column: 14, scope: !156)
!156 = distinct !DILexicalBlock(scope: !124, file: !5, line: 107, column: 6)
!157 = !DILocation(line: 107, column: 6, scope: !156)
!158 = !DILocation(line: 107, column: 29, scope: !156)
!159 = !DILocation(line: 107, column: 6, scope: !124)
!160 = !DILocation(line: 108, column: 3, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !5, line: 107, column: 35)
!162 = !DILocation(line: 109, column: 2, scope: !161)
!163 = !DILocation(line: 111, column: 14, scope: !164)
!164 = distinct !DILexicalBlock(scope: !124, file: !5, line: 111, column: 6)
!165 = !DILocation(line: 111, column: 6, scope: !164)
!166 = !DILocation(line: 111, column: 31, scope: !164)
!167 = !DILocation(line: 111, column: 6, scope: !124)
!168 = !DILocation(line: 112, column: 3, scope: !169)
!169 = distinct !DILexicalBlock(scope: !164, file: !5, line: 111, column: 37)
!170 = !DILocation(line: 113, column: 2, scope: !169)
!171 = !DILocation(line: 116, column: 3, scope: !172)
!172 = distinct !DILexicalBlock(scope: !164, file: !5, line: 115, column: 7)
!173 = !DILocation(line: 119, column: 2, scope: !124)
