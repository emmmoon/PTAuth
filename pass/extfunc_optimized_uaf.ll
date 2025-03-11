; ModuleID = 'extfunc_optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64--linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Metadata = type { i64 }
%struct.timespec = type { i64, i64 }
%struct.person = type { i8*, i32, i64 }
%struct.name = type { i8*, void (i8*)* }

@MASKHIGHBIT = global i64 -281474976710656, align 8
@MASKLOWBIT = global i64 281474976710655, align 8
@MASK7BITS = global i64 255, align 8
@NestedGEPHasSignature = global i64 0, align 8
@NestedGEPHasNoSignature = global i64 0, align 8
@GEPHasSignature = global i64 0, align 8
@GEPHasNoSignature = global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Begin backward_search.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"backward_search: now search at %p.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"backward_search succeeds.\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"backward_search fails.\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Your OS does not support Top-Byte Ignore.\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"ptauth_malloc:the malloc meta location is = %p \0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"ptauth_malloc:the malloc id is %lx.\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"ptauth_malloc:the malloc object pointer location is = %p \0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"__ptauth_free:meta ptr is = %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"__ptauth_free:meta ptr after stripping is = %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"__ptauth_free:meta id after stripping is = %lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Pointer is 0x20000000000000 !\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"\09****** __ptauth_free! Pointer is not Valid! ****** \0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"The gepcheck ptr is %p.\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"The gepCheck signature is %llx.\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"The loadcheck ptr is %p.\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"The loadCheck signature is %llx.\0A\00", align 1
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
@.str.17 = private unnamed_addr constant [14 x i8] c"/proc/%d/maps\00", align 1
@.str.1.18 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2.19 = private unnamed_addr constant [5 x i8] c"heap\00", align 1
@.str.3.20 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.4.21 = private unnamed_addr constant [18 x i8] c"Lineeee is = %s \0A\00", align 1
@.str.5.22 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6.23 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7.24 = private unnamed_addr constant [7 x i8] c"%llx\0A \00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"Person ID is = %ld \0A\00", align 1
@.str.1.32 = private unnamed_addr constant [21 x i8] c"Person age is = %d \0A\00", align 1
@.str.2.33 = private unnamed_addr constant [86 x i8] c"Dereferencing p dangling pointer. PTAuth should terminate the program at this point.\0A\00", align 1
@.str.3.34 = private unnamed_addr constant [11 x i8] c"buf1:0x%p\0A\00", align 1
@.str.4.35 = private unnamed_addr constant [12 x i8] c"buf2:0x%p\0A\0A\00", align 1
@.str.5.36 = private unnamed_addr constant [9 x i8] c"buf2:%d\0A\00", align 1
@.str.6.37 = private unnamed_addr constant [25 x i8] c"==== Use After Free ===\0A\00", align 1
@.str.7.38 = private unnamed_addr constant [5 x i8] c"hack\00", align 1
@.str.8.39 = private unnamed_addr constant [10 x i8] c"buf2:%s\0A\0A\00", align 1
@.str.9.40 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.10.41 = private unnamed_addr constant [20 x i8] c"call print my name\0A\00", align 1
@.str.11.42 = private unnamed_addr constant [18 x i8] c"I can also use it\00", align 1
@.str.12.43 = private unnamed_addr constant [20 x i8] c"this is my function\00", align 1
@.str.13.44 = private unnamed_addr constant [27 x i8] c"this pogram will crash...\0A\00", align 1
@.str.14.45 = private unnamed_addr constant [22 x i8] c"can not be printed...\00", align 1
@.str.15.46 = private unnamed_addr constant [15 x i8] c"The ID is %d.\0A\00", align 1
@.str.16.47 = private unnamed_addr constant [74 x i8] c"Free a freed pointer. PTAuth should terminate the program at this point.\0A\00", align 1
@.str.17.48 = private unnamed_addr constant [79 x i8] c"Invalid free of a pointer. PTAuth should terminate the program at this point.\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Usage: ./stest.arm.elf [OPTIONS]\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"./stest.arm.elf uaf     Trigger the Use-After-Free bug\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"./stest.arm.elf df      Trigger the Double-Free bug\0A\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"./stest.arm.elf if      Trigger the Invalid-Free bug\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"uaf1\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"uaf2\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"uaf3\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"uaf4\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"uaf5\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"tb\00", align 1

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
  store i64 688, i64* %9, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %10, align 4
  br label %17

; <label>:17:                                     ; preds = %79, %3
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %82

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %24, %26
  %28 = srem i64 %27, 16
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

; <label>:30:                                     ; preds = %22
  %31 = load i8*, i8** %8, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %32, %34
  %36 = srem i64 %35, 16
  %37 = sub nsw i64 %36, 1
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  br label %79

; <label>:42:                                     ; preds = %22
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr i8, i8* %43, i64 %46
  %48 = getelementptr i8, i8* %47, i64 8
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8* %49)
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr i8, i8* %51, i64 %54
  %56 = bitcast i8* %55 to %struct.Metadata*
  store %struct.Metadata* %56, %struct.Metadata** %5, align 8
  %57 = load %struct.Metadata*, %struct.Metadata** %5, align 8
  %58 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %11, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i8, i8* %6, align 1
  %63 = call i8* @__autia(i8* %60, i64 %61, i8 %62)
  store i8* %63, i8** %12, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

; <label>:66:                                     ; preds = %42
  %67 = load i8*, i8** %12, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %78

; <label>:69:                                     ; preds = %66
  %70 = load i8, i8* %6, align 1
  %71 = zext i8 %70 to i32
  switch i32 %71, label %74 [
    i32 76, label %72
    i32 83, label %73
  ]

; <label>:72:                                     ; preds = %69
  br label %75

; <label>:73:                                     ; preds = %69
  br label %75

; <label>:74:                                     ; preds = %69
  br label %75

; <label>:75:                                     ; preds = %74, %73, %72
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  %77 = load i8*, i8** %8, align 8
  ret i8* %77

; <label>:78:                                     ; preds = %66, %42
  br label %79

; <label>:79:                                     ; preds = %78, %30
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %17

; <label>:82:                                     ; preds = %17
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
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
  %6 = alloca %struct.timespec, align 8
  store %struct.Metadata* %0, %struct.Metadata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @clock_gettime(i32 0, %struct.timespec* %6) #8
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = xor i64 %9, %11
  %13 = trunc i64 %12 to i32
  call void @srand(i32 %13) #8
  %14 = call i32 @rand() #8
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = shl i64 %16, 32
  %18 = call i32 @rand() #8
  %19 = sext i32 %18 to i64
  %20 = or i64 %17, %19
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = urem i64 %21, 899999999
  %23 = add i64 %22, 100000000
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %26 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32, %struct.timespec*) #1

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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0))
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
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0), %struct.Metadata* %23)
  %25 = load %struct.Metadata*, %struct.Metadata** %6, align 8
  %26 = load i64, i64* %2, align 8
  %27 = trunc i64 %26 to i32
  call void @initMD(%struct.Metadata* %25, i32 %27)
  %28 = load %struct.Metadata*, %struct.Metadata** %6, align 8
  %29 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i64 %31)
  %33 = load %struct.Metadata*, %struct.Metadata** %6, align 8
  %34 = bitcast %struct.Metadata* %33 to i32*
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = bitcast i32* %35 to i8*
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i8* @__pacia(i8* %37, i64 %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i32 0, i32 0), i8* %40)
  %42 = load i8*, i8** %8, align 8
  ret i8* %42
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
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0))
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
  br label %45

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = getelementptr inbounds i32, i32* %10, i64 -2
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i8* %12 to %struct.Metadata*
  store %struct.Metadata* %13, %struct.Metadata** %3, align 8
  %14 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), %struct.Metadata* %14)
  %16 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %17 = ptrtoint %struct.Metadata* %16 to i64
  %18 = load i64, i64* @MASKHIGHBIT, align 8
  %19 = xor i64 %18, -1
  %20 = and i64 %17, %19
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.Metadata*
  store %struct.Metadata* %22, %struct.Metadata** %3, align 8
  %23 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0), %struct.Metadata* %23)
  %25 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %26 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i32 0, i32 0), i64 %28)
  %30 = load i8*, i8** %2, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i8* @__autia(i8* %30, i64 %31, i8 70)
  store i8* %32, i8** %2, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

; <label>:35:                                     ; preds = %8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0))
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0))
  call void @exit(i32 0) #9
  unreachable

; <label>:38:                                     ; preds = %8
  %39 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %40 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %39, i32 0, i32 0
  store i64 2, i64* %40, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = getelementptr inbounds i32, i32* %42, i64 -2
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* %44) #8
  br label %45

; <label>:45:                                     ; preds = %38, %7
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
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0))
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
  br label %128

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
  br label %128

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
  store i64 688, i64* %8, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #8
  store i32 1, i32* %9, align 4
  br label %60

; <label>:60:                                     ; preds = %119, %52
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %8, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %122

; <label>:65:                                     ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %67, %69
  %71 = srem i64 %70, 16
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

; <label>:73:                                     ; preds = %65
  %74 = load i8*, i8** %7, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %75, %77
  %79 = srem i64 %78, 16
  %80 = sub nsw i64 %79, 1
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %9, align 4
  br label %119

; <label>:85:                                     ; preds = %65
  %86 = load i8*, i8** %3, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = sub i64 0, %88
  %90 = getelementptr i8, i8* %86, i64 %89
  %91 = getelementptr i8, i8* %90, i64 8
  store i8* %91, i8** %6, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8* %92) #8
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = sub i64 0, %96
  %98 = getelementptr i8, i8* %94, i64 %97
  %99 = bitcast i8* %98 to %struct.Metadata*
  store %struct.Metadata* %99, %struct.Metadata** %4, align 8
  %100 = load %struct.Metadata*, %struct.Metadata** %4, align 8
  %101 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %10, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load i8, i8* %5, align 1
  %106 = call i8* @__autia(i8* %103, i64 %104, i8 %105) #8
  store i8* %106, i8** %11, align 8
  %107 = load i64, i64* %10, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

; <label>:109:                                    ; preds = %85
  %110 = load i8*, i8** %11, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %118

; <label>:112:                                    ; preds = %109
  %113 = load i8, i8* %5, align 1
  %114 = zext i8 %113 to i32
  switch i32 %114, label %117 [
    i32 76, label %115
    i32 83, label %116
  ]

; <label>:115:                                    ; preds = %112
  br label %124

; <label>:116:                                    ; preds = %112
  br label %124

; <label>:117:                                    ; preds = %112
  br label %124

; <label>:118:                                    ; preds = %109, %85
  br label %119

; <label>:119:                                    ; preds = %118, %73
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %60

; <label>:122:                                    ; preds = %60
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #8
  call void @exit(i32 0) #9
  unreachable

; <label>:124:                                    ; preds = %115, %116, %117
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)) #8
  %126 = load i8*, i8** %7, align 8
  store i8* %126, i8** %19, align 8
  %127 = load i8*, i8** %13, align 8
  store i8* %127, i8** %12, align 8
  br label %128

; <label>:128:                                    ; preds = %124, %50, %22
  %129 = load i8*, i8** %12, align 8
  ret i8* %129
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
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i8* %23)
  %25 = load i8*, i8** %20, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = load i64, i64* @MASKLOWBIT, align 8
  %28 = xor i64 %27, -1
  %29 = and i64 %26, %28
  store i64 %29, i64* %21, align 8
  %30 = load i64, i64* %21, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i64 %30)
  %32 = load i64, i64* %21, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %147

; <label>:34:                                     ; preds = %1
  %35 = load i8*, i8** %20, align 8
  store i8* %35, i8** %12, align 8
  store i8 76, i8* %13, align 1
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %12, align 8
  store i8* %39, i8** %11, align 8
  br label %144

; <label>:40:                                     ; preds = %34
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 -8
  %43 = bitcast i8* %42 to %struct.Metadata*
  store %struct.Metadata* %43, %struct.Metadata** %14, align 8
  %44 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %45 = ptrtoint %struct.Metadata* %44 to i64
  %46 = load i64, i64* @MASKHIGHBIT, align 8
  %47 = xor i64 %46, -1
  %48 = and i64 %45, %47
  %49 = inttoptr i64 %48 to i8*
  %50 = bitcast i8* %49 to %struct.Metadata*
  store %struct.Metadata* %50, %struct.Metadata** %14, align 8
  %51 = load i8*, i8** %12, align 8
  store i8* %51, i8** %15, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i8* @__xpac(i8* %52) #8
  store i8* %53, i8** %16, align 8
  %54 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %55 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %17, align 8
  %57 = load i64, i64* %17, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

; <label>:59:                                     ; preds = %40
  %60 = load i8*, i8** %12, align 8
  %61 = load i64, i64* %17, align 8
  %62 = load i8, i8* %13, align 1
  %63 = call i8* @__autia(i8* %60, i64 %61, i8 %62) #8
  %64 = load i8*, i8** %16, align 8
  %65 = icmp eq i8* %63, %64
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %59
  %67 = load i8*, i8** %12, align 8
  store i8* %67, i8** %11, align 8
  br label %144

; <label>:68:                                     ; preds = %59, %40
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %71 = load i8, i8* %13, align 1
  store i8* %69, i8** %2, align 8
  store %struct.Metadata* %70, %struct.Metadata** %3, align 8
  store i8 %71, i8* %4, align 1
  %72 = load i8*, i8** %2, align 8
  store i8* %72, i8** %5, align 8
  %73 = load i8*, i8** %2, align 8
  %74 = call i8* @__xpac(i8* %73) #8
  store i8* %74, i8** %6, align 8
  store i64 9223372036854775807, i64* %7, align 8
  store i64 688, i64* %7, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #8
  store i32 1, i32* %8, align 4
  br label %76

; <label>:76:                                     ; preds = %135, %68
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %7, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %138

; <label>:81:                                     ; preds = %76
  %82 = load i8*, i8** %6, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %83, %85
  %87 = srem i64 %86, 16
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

; <label>:89:                                     ; preds = %81
  %90 = load i8*, i8** %6, align 8
  %91 = ptrtoint i8* %90 to i64
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %91, %93
  %95 = srem i64 %94, 16
  %96 = sub nsw i64 %95, 1
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %8, align 4
  br label %135

; <label>:101:                                    ; preds = %81
  %102 = load i8*, i8** %2, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 0, %104
  %106 = getelementptr i8, i8* %102, i64 %105
  %107 = getelementptr i8, i8* %106, i64 8
  store i8* %107, i8** %5, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8* %108) #8
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr i8, i8* %110, i64 %113
  %115 = bitcast i8* %114 to %struct.Metadata*
  store %struct.Metadata* %115, %struct.Metadata** %3, align 8
  %116 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %117 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %9, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load i8, i8* %4, align 1
  %122 = call i8* @__autia(i8* %119, i64 %120, i8 %121) #8
  store i8* %122, i8** %10, align 8
  %123 = load i64, i64* %9, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

; <label>:125:                                    ; preds = %101
  %126 = load i8*, i8** %10, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %134

; <label>:128:                                    ; preds = %125
  %129 = load i8, i8* %4, align 1
  %130 = zext i8 %129 to i32
  switch i32 %130, label %133 [
    i32 76, label %131
    i32 83, label %132
  ]

; <label>:131:                                    ; preds = %128
  br label %140

; <label>:132:                                    ; preds = %128
  br label %140

; <label>:133:                                    ; preds = %128
  br label %140

; <label>:134:                                    ; preds = %125, %101
  br label %135

; <label>:135:                                    ; preds = %134, %89
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %76

; <label>:138:                                    ; preds = %76
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #8
  call void @exit(i32 0) #9
  unreachable

; <label>:140:                                    ; preds = %133, %132, %131
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)) #8
  %142 = load i8*, i8** %6, align 8
  store i8* %142, i8** %18, align 8
  %143 = load i8*, i8** %12, align 8
  store i8* %143, i8** %11, align 8
  br label %144

; <label>:144:                                    ; preds = %38, %66, %140
  %145 = load i8*, i8** %11, align 8
  store i8* %145, i8** %22, align 8
  %146 = load i8*, i8** %20, align 8
  store i8* %146, i8** %19, align 8
  br label %149

; <label>:147:                                    ; preds = %1
  %148 = load i8*, i8** %20, align 8
  store i8* %148, i8** %19, align 8
  br label %149

; <label>:149:                                    ; preds = %147, %144
  %150 = load i8*, i8** %19, align 8
  ret i8* %150
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
  br i1 %29, label %30, label %143

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
  br label %140

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
  br label %140

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
  store i64 688, i64* %7, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #8
  store i32 1, i32* %8, align 4
  br label %72

; <label>:72:                                     ; preds = %131, %64
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %7, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %134

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** %6, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %79, %81
  %83 = srem i64 %82, 16
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

; <label>:85:                                     ; preds = %77
  %86 = load i8*, i8** %6, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %87, %89
  %91 = srem i64 %90, 16
  %92 = sub nsw i64 %91, 1
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %8, align 4
  br label %131

; <label>:97:                                     ; preds = %77
  %98 = load i8*, i8** %2, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr i8, i8* %98, i64 %101
  %103 = getelementptr i8, i8* %102, i64 8
  store i8* %103, i8** %5, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8* %104) #8
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 0, %108
  %110 = getelementptr i8, i8* %106, i64 %109
  %111 = bitcast i8* %110 to %struct.Metadata*
  store %struct.Metadata* %111, %struct.Metadata** %3, align 8
  %112 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %113 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %9, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i8, i8* %4, align 1
  %118 = call i8* @__autia(i8* %115, i64 %116, i8 %117) #8
  store i8* %118, i8** %10, align 8
  %119 = load i64, i64* %9, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

; <label>:121:                                    ; preds = %97
  %122 = load i8*, i8** %10, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %130

; <label>:124:                                    ; preds = %121
  %125 = load i8, i8* %4, align 1
  %126 = zext i8 %125 to i32
  switch i32 %126, label %129 [
    i32 76, label %127
    i32 83, label %128
  ]

; <label>:127:                                    ; preds = %124
  br label %136

; <label>:128:                                    ; preds = %124
  br label %136

; <label>:129:                                    ; preds = %124
  br label %136

; <label>:130:                                    ; preds = %121, %97
  br label %131

; <label>:131:                                    ; preds = %130, %85
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %72

; <label>:134:                                    ; preds = %72
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #8
  call void @exit(i32 0) #9
  unreachable

; <label>:136:                                    ; preds = %129, %128, %127
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)) #8
  %138 = load i8*, i8** %6, align 8
  store i8* %138, i8** %18, align 8
  %139 = load i8*, i8** %12, align 8
  store i8* %139, i8** %11, align 8
  br label %140

; <label>:140:                                    ; preds = %34, %62, %136
  %141 = load i8*, i8** %11, align 8
  store i8* %141, i8** %22, align 8
  %142 = load i8*, i8** %20, align 8
  store i8* %142, i8** %19, align 8
  br label %145

; <label>:143:                                    ; preds = %1
  %144 = load i8*, i8** %20, align 8
  store i8* %144, i8** %19, align 8
  br label %145

; <label>:145:                                    ; preds = %143, %140
  %146 = load i8*, i8** %19, align 8
  ret i8* %146
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
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i8* %23)
  %25 = load i8*, i8** %20, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = load i64, i64* @MASKLOWBIT, align 8
  %28 = xor i64 %27, -1
  %29 = and i64 %26, %28
  store i64 %29, i64* %21, align 8
  %30 = load i64, i64* %21, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0), i64 %30)
  %32 = load i64, i64* %21, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %147

; <label>:34:                                     ; preds = %1
  %35 = load i8*, i8** %20, align 8
  store i8* %35, i8** %12, align 8
  store i8 76, i8* %13, align 1
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %12, align 8
  store i8* %39, i8** %11, align 8
  br label %144

; <label>:40:                                     ; preds = %34
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 -8
  %43 = bitcast i8* %42 to %struct.Metadata*
  store %struct.Metadata* %43, %struct.Metadata** %14, align 8
  %44 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %45 = ptrtoint %struct.Metadata* %44 to i64
  %46 = load i64, i64* @MASKHIGHBIT, align 8
  %47 = xor i64 %46, -1
  %48 = and i64 %45, %47
  %49 = inttoptr i64 %48 to i8*
  %50 = bitcast i8* %49 to %struct.Metadata*
  store %struct.Metadata* %50, %struct.Metadata** %14, align 8
  %51 = load i8*, i8** %12, align 8
  store i8* %51, i8** %15, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i8* @__xpac(i8* %52) #8
  store i8* %53, i8** %16, align 8
  %54 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %55 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %17, align 8
  %57 = load i64, i64* %17, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

; <label>:59:                                     ; preds = %40
  %60 = load i8*, i8** %12, align 8
  %61 = load i64, i64* %17, align 8
  %62 = load i8, i8* %13, align 1
  %63 = call i8* @__autia(i8* %60, i64 %61, i8 %62) #8
  %64 = load i8*, i8** %16, align 8
  %65 = icmp eq i8* %63, %64
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %59
  %67 = load i8*, i8** %12, align 8
  store i8* %67, i8** %11, align 8
  br label %144

; <label>:68:                                     ; preds = %59, %40
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.Metadata*, %struct.Metadata** %14, align 8
  %71 = load i8, i8* %13, align 1
  store i8* %69, i8** %2, align 8
  store %struct.Metadata* %70, %struct.Metadata** %3, align 8
  store i8 %71, i8* %4, align 1
  %72 = load i8*, i8** %2, align 8
  store i8* %72, i8** %5, align 8
  %73 = load i8*, i8** %2, align 8
  %74 = call i8* @__xpac(i8* %73) #8
  store i8* %74, i8** %6, align 8
  store i64 9223372036854775807, i64* %7, align 8
  store i64 688, i64* %7, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #8
  store i32 1, i32* %8, align 4
  br label %76

; <label>:76:                                     ; preds = %135, %68
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %7, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %138

; <label>:81:                                     ; preds = %76
  %82 = load i8*, i8** %6, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %83, %85
  %87 = srem i64 %86, 16
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

; <label>:89:                                     ; preds = %81
  %90 = load i8*, i8** %6, align 8
  %91 = ptrtoint i8* %90 to i64
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %91, %93
  %95 = srem i64 %94, 16
  %96 = sub nsw i64 %95, 1
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %8, align 4
  br label %135

; <label>:101:                                    ; preds = %81
  %102 = load i8*, i8** %2, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 0, %104
  %106 = getelementptr i8, i8* %102, i64 %105
  %107 = getelementptr i8, i8* %106, i64 8
  store i8* %107, i8** %5, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8* %108) #8
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr i8, i8* %110, i64 %113
  %115 = bitcast i8* %114 to %struct.Metadata*
  store %struct.Metadata* %115, %struct.Metadata** %3, align 8
  %116 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %117 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %9, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load i8, i8* %4, align 1
  %122 = call i8* @__autia(i8* %119, i64 %120, i8 %121) #8
  store i8* %122, i8** %10, align 8
  %123 = load i64, i64* %9, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

; <label>:125:                                    ; preds = %101
  %126 = load i8*, i8** %10, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %134

; <label>:128:                                    ; preds = %125
  %129 = load i8, i8* %4, align 1
  %130 = zext i8 %129 to i32
  switch i32 %130, label %133 [
    i32 76, label %131
    i32 83, label %132
  ]

; <label>:131:                                    ; preds = %128
  br label %140

; <label>:132:                                    ; preds = %128
  br label %140

; <label>:133:                                    ; preds = %128
  br label %140

; <label>:134:                                    ; preds = %125, %101
  br label %135

; <label>:135:                                    ; preds = %134, %89
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %76

; <label>:138:                                    ; preds = %76
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #8
  call void @exit(i32 0) #9
  unreachable

; <label>:140:                                    ; preds = %133, %132, %131
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)) #8
  %142 = load i8*, i8** %6, align 8
  store i8* %142, i8** %18, align 8
  %143 = load i8*, i8** %12, align 8
  store i8* %143, i8** %11, align 8
  br label %144

; <label>:144:                                    ; preds = %38, %66, %140
  %145 = load i8*, i8** %11, align 8
  store i8* %145, i8** %22, align 8
  %146 = load i8*, i8** %20, align 8
  store i8* %146, i8** %19, align 8
  br label %149

; <label>:147:                                    ; preds = %1
  %148 = load i8*, i8** %20, align 8
  store i8* %148, i8** %19, align 8
  br label %149

; <label>:149:                                    ; preds = %147, %144
  %150 = load i8*, i8** %19, align 8
  ret i8* %150
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
  br i1 %29, label %30, label %143

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
  br label %140

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
  br label %140

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
  store i64 688, i64* %7, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #8
  store i32 1, i32* %8, align 4
  br label %72

; <label>:72:                                     ; preds = %131, %64
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %7, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %134

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** %6, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %79, %81
  %83 = srem i64 %82, 16
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

; <label>:85:                                     ; preds = %77
  %86 = load i8*, i8** %6, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %87, %89
  %91 = srem i64 %90, 16
  %92 = sub nsw i64 %91, 1
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %8, align 4
  br label %131

; <label>:97:                                     ; preds = %77
  %98 = load i8*, i8** %2, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr i8, i8* %98, i64 %101
  %103 = getelementptr i8, i8* %102, i64 8
  store i8* %103, i8** %5, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8* %104) #8
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 0, %108
  %110 = getelementptr i8, i8* %106, i64 %109
  %111 = bitcast i8* %110 to %struct.Metadata*
  store %struct.Metadata* %111, %struct.Metadata** %3, align 8
  %112 = load %struct.Metadata*, %struct.Metadata** %3, align 8
  %113 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %9, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i8, i8* %4, align 1
  %118 = call i8* @__autia(i8* %115, i64 %116, i8 %117) #8
  store i8* %118, i8** %10, align 8
  %119 = load i64, i64* %9, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

; <label>:121:                                    ; preds = %97
  %122 = load i8*, i8** %10, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %130

; <label>:124:                                    ; preds = %121
  %125 = load i8, i8* %4, align 1
  %126 = zext i8 %125 to i32
  switch i32 %126, label %129 [
    i32 76, label %127
    i32 83, label %128
  ]

; <label>:127:                                    ; preds = %124
  br label %136

; <label>:128:                                    ; preds = %124
  br label %136

; <label>:129:                                    ; preds = %124
  br label %136

; <label>:130:                                    ; preds = %121, %97
  br label %131

; <label>:131:                                    ; preds = %130, %85
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %72

; <label>:134:                                    ; preds = %72
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #8
  call void @exit(i32 0) #9
  unreachable

; <label>:136:                                    ; preds = %129, %128, %127
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)) #8
  %138 = load i8*, i8** %6, align 8
  store i8* %138, i8** %18, align 8
  %139 = load i8*, i8** %12, align 8
  store i8* %139, i8** %11, align 8
  br label %140

; <label>:140:                                    ; preds = %34, %62, %136
  %141 = load i8*, i8** %11, align 8
  store i8* %141, i8** %22, align 8
  %142 = load i8*, i8** %22, align 8
  store i8* %142, i8** %19, align 8
  br label %145

; <label>:143:                                    ; preds = %1
  %144 = load i8*, i8** %20, align 8
  store i8* %144, i8** %19, align 8
  br label %145

; <label>:145:                                    ; preds = %143, %140
  %146 = load i8*, i8** %19, align 8
  ret i8* %146
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
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @filename, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %9) #8
  %11 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @filename, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.18, i32 0, i32 0))
  store %struct._IO_FILE* %11, %struct._IO_FILE** @file, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.19, i32 0, i32 0), i8** %3, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.20, i32 0, i32 0), i8** %4, align 8
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
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.21, i32 0, i32 0), i8* %18)
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i32 0, i32 0
  %21 = load i8*, i8** %3, align 8
  %22 = call i8* @strstr(i8* %20, i8* %21) #10
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %45

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i32 0, i32 0
  %26 = call i8* @strtok(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.22, i32 0, i32 0)) #8
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strtoul(i8* %27, i8** %7, i32 16) #8
  store i64 %28, i64* @address_start, align 8
  %29 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.23, i32 0, i32 0)) #8
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strtoul(i8* %30, i8** %7, i32 16) #8
  store i64 %31, i64* @address_end, align 8
  %32 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.23, i32 0, i32 0)) #8
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
  %50 = call i8* @strtok(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.22, i32 0, i32 0)) #8
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strtoul(i8* %51, i8** %7, i32 16) #8
  store i64 %52, i64* @address_start, align 8
  %53 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.23, i32 0, i32 0)) #8
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strtoul(i8* %54, i8** %7, i32 16) #8
  store i64 %55, i64* @address_end, align 8
  %56 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.23, i32 0, i32 0)) #8
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
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.24, i32 0, i32 0), i64 %82)
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
  call void asm sideeffect "eor x0,x0,#0x2\0A", ""() #8, !srcloc !30
  call void asm sideeffect "eor x0,x0,#0x3\0A", ""() #8, !srcloc !31
  call void asm sideeffect "eor x0,x0,#0x2\0A", ""() #8, !srcloc !32
  call void asm sideeffect "eor x0,x0,#0x4\0A", ""() #8, !srcloc !33
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
define void @set_info(%struct.person*, i32, i64) #0 !dbg !34 {
  %4 = alloca %struct.person*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.person* %0, %struct.person** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.person** %4, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !39, metadata !DIExpression()), !dbg !40
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !41, metadata !DIExpression()), !dbg !42
  %7 = load i32, i32* %5, align 4, !dbg !43
  %8 = load %struct.person*, %struct.person** %4, align 8, !dbg !44
  %9 = getelementptr inbounds %struct.person, %struct.person* %8, i32 0, i32 1, !dbg !45
  store i32 %7, i32* %9, align 8, !dbg !46
  %10 = load i64, i64* %6, align 8, !dbg !47
  %11 = load %struct.person*, %struct.person** %4, align 8, !dbg !48
  %12 = getelementptr inbounds %struct.person, %struct.person* %11, i32 0, i32 2, !dbg !49
  store i64 %10, i64* %12, align 8, !dbg !50
  ret void, !dbg !51
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: noinline nounwind optnone
define void @print_person(%struct.person*) #0 !dbg !52 {
  %2 = alloca %struct.person*, align 8
  store %struct.person* %0, %struct.person** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.person** %2, metadata !55, metadata !DIExpression()), !dbg !56
  %3 = load %struct.person*, %struct.person** %2, align 8, !dbg !57
  %4 = getelementptr inbounds %struct.person, %struct.person* %3, i32 0, i32 2, !dbg !58
  %5 = load i64, i64* %4, align 8, !dbg !58
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0), i64 %5), !dbg !59
  %7 = load %struct.person*, %struct.person** %2, align 8, !dbg !60
  %8 = getelementptr inbounds %struct.person, %struct.person* %7, i32 0, i32 1, !dbg !61
  %9 = load i32, i32* %8, align 8, !dbg !61
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.32, i32 0, i32 0), i32 %9), !dbg !62
  %11 = load %struct.person*, %struct.person** %2, align 8, !dbg !63
  %12 = bitcast %struct.person* %11 to i8*, !dbg !63
  call void @__ptauth_free(i8* %12)
  ret void, !dbg !64
}

; Function Attrs: noinline nounwind optnone
define void @use_after_free1() #0 !dbg !65 {
  %1 = alloca %struct.person*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.person** %1, metadata !68, metadata !DIExpression()), !dbg !69
  %3 = call i8* @__ptauth_malloc(i64 24)
  %4 = bitcast i8* %3 to %struct.person*, !dbg !70
  store %struct.person* %4, %struct.person** %1, align 8, !dbg !69
  %5 = load %struct.person*, %struct.person** %1, align 8, !dbg !71
  %6 = bitcast %struct.person* %5 to i8*, !dbg !72
  %7 = call i8* @__loadCheck(i8* %6), !dbg !72
  call void @set_info(%struct.person* %5, i32 25, i64 50), !dbg !72
  %8 = load %struct.person*, %struct.person** %1, align 8, !dbg !73
  %9 = bitcast %struct.person* %8 to i8*, !dbg !74
  %10 = call i8* @__loadCheck(i8* %9), !dbg !74
  call void @print_person(%struct.person* %8), !dbg !74
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2.33, i32 0, i32 0)), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %2, metadata !76, metadata !DIExpression()), !dbg !77
  %12 = load %struct.person*, %struct.person** %1, align 8, !dbg !78
  %13 = bitcast %struct.person* %12 to i8*, !dbg !79
  %14 = call i8* @__GEPCheck(i8* %13), !dbg !79
  %15 = bitcast i8* %14 to %struct.person*, !dbg !79
  %16 = getelementptr inbounds %struct.person, %struct.person* %15, i32 0, i32 2, !dbg !79
  %17 = load i64, i64* %16, align 8, !dbg !79
  %18 = trunc i64 %17 to i32, !dbg !78
  store i32 %18, i32* %2, align 4, !dbg !77
  ret void, !dbg !80
}

; Function Attrs: noinline nounwind optnone
define void @use_after_free2() #0 !dbg !81 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata i8** %2, metadata !84, metadata !DIExpression()), !dbg !85
  %3 = call i8* @__ptauth_malloc(i64 32)
  store i8* %3, i8** %1, align 8, !dbg !86
  %4 = load i8*, i8** %1, align 8, !dbg !87
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.34, i32 0, i32 0), i8* %4), !dbg !88
  %6 = load i8*, i8** %1, align 8, !dbg !89
  call void @__ptauth_free(i8* %6)
  %7 = call i8* @__ptauth_malloc(i64 32)
  store i8* %7, i8** %2, align 8, !dbg !90
  %8 = load i8*, i8** %2, align 8, !dbg !91
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.35, i32 0, i32 0), i8* %8), !dbg !92
  %10 = load i8*, i8** %2, align 8, !dbg !93
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 32, i32 1, i1 false), !dbg !94
  %11 = load i8*, i8** %2, align 8, !dbg !95
  %12 = load i8, i8* %11, align 1, !dbg !96
  %13 = zext i8 %12 to i32, !dbg !96
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5.36, i32 0, i32 0), i32 %13), !dbg !97
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6.37, i32 0, i32 0)), !dbg !98
  %16 = load i8*, i8** %1, align 8, !dbg !99
  %17 = call i8* @__loadCheck(i8* %16), !dbg !100
  %18 = call i8* @strncpy(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.38, i32 0, i32 0), i64 5) #8, !dbg !100
  %19 = load i8*, i8** %2, align 8, !dbg !101
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8.39, i32 0, i32 0), i8* %19), !dbg !102
  %21 = load i8*, i8** %2, align 8, !dbg !103
  call void @__ptauth_free(i8* %21)
  ret void, !dbg !104
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: noinline nounwind optnone
define void @myprint(i8*) #0 !dbg !105 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !106, metadata !DIExpression()), !dbg !107
  %3 = load i8*, i8** %2, align 8, !dbg !108
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9.40, i32 0, i32 0), i8* %3), !dbg !109
  ret void, !dbg !110
}

; Function Attrs: noinline nounwind optnone
define void @printmyname() #0 !dbg !111 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10.41, i32 0, i32 0)), !dbg !112
  ret void, !dbg !113
}

; Function Attrs: noinline nounwind optnone
define void @use_after_free3() #0 !dbg !114 {
  %1 = alloca %struct.name*, align 8
  call void @llvm.dbg.declare(metadata %struct.name** %1, metadata !115, metadata !DIExpression()), !dbg !116
  %2 = call i8* @__ptauth_malloc(i64 16)
  %3 = bitcast i8* %2 to %struct.name*, !dbg !117
  store %struct.name* %3, %struct.name** %1, align 8, !dbg !118
  %4 = load %struct.name*, %struct.name** %1, align 8, !dbg !119
  %5 = getelementptr inbounds %struct.name, %struct.name* %4, i32 0, i32 1, !dbg !120
  store void (i8*)* @myprint, void (i8*)** %5, align 8, !dbg !121
  %6 = load %struct.name*, %struct.name** %1, align 8, !dbg !122
  %7 = getelementptr inbounds %struct.name, %struct.name* %6, i32 0, i32 0, !dbg !123
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11.42, i32 0, i32 0), i8** %7, align 8, !dbg !124
  %8 = load %struct.name*, %struct.name** %1, align 8, !dbg !125
  %9 = getelementptr inbounds %struct.name, %struct.name* %8, i32 0, i32 1, !dbg !126
  %10 = load void (i8*)*, void (i8*)** %9, align 8, !dbg !126
  call void %10(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12.43, i32 0, i32 0)), !dbg !125
  %11 = load %struct.name*, %struct.name** %1, align 8, !dbg !127
  %12 = bitcast %struct.name* %11 to i8*, !dbg !127
  call void @__ptauth_free(i8* %12)
  %13 = load %struct.name*, %struct.name** %1, align 8, !dbg !128
  %14 = bitcast %struct.name* %13 to i8*, !dbg !129
  %15 = call i8* @__GEPCheck(i8* %14), !dbg !129
  %16 = bitcast i8* %15 to %struct.name*, !dbg !129
  %17 = getelementptr inbounds %struct.name, %struct.name* %16, i32 0, i32 1, !dbg !129
  %18 = load void (i8*)*, void (i8*)** %17, align 8, !dbg !129
  call void %18(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11.42, i32 0, i32 0)), !dbg !128
  %19 = load %struct.name*, %struct.name** %1, align 8, !dbg !130
  %20 = getelementptr inbounds %struct.name, %struct.name* %19, i32 0, i32 1, !dbg !131
  store void (i8*)* bitcast (void ()* @printmyname to void (i8*)*), void (i8*)** %20, align 8, !dbg !132
  %21 = load %struct.name*, %struct.name** %1, align 8, !dbg !133
  %22 = getelementptr inbounds %struct.name, %struct.name* %21, i32 0, i32 1, !dbg !134
  %23 = load void (i8*)*, void (i8*)** %22, align 8, !dbg !134
  call void %23(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12.43, i32 0, i32 0)), !dbg !133
  store %struct.name* null, %struct.name** %1, align 8, !dbg !135
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13.44, i32 0, i32 0)), !dbg !136
  %25 = load %struct.name*, %struct.name** %1, align 8, !dbg !137
  %26 = getelementptr inbounds %struct.name, %struct.name* %25, i32 0, i32 1, !dbg !138
  %27 = load void (i8*)*, void (i8*)** %26, align 8, !dbg !138
  call void %27(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14.45, i32 0, i32 0)), !dbg !137
  ret void, !dbg !139
}

; Function Attrs: noinline nounwind optnone
define void @use_after_free4() #0 !dbg !140 {
  %1 = alloca i32**, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32*** %1, metadata !141, metadata !DIExpression()), !dbg !142
  %3 = call i8* @__ptauth_malloc(i64 24)
  %4 = bitcast i8* %3 to i32**, !dbg !143
  store i32** %4, i32*** %1, align 8, !dbg !142
  %5 = call i8* @__ptauth_malloc(i64 16)
  %6 = bitcast i8* %5 to i32*, !dbg !144
  %7 = load i32**, i32*** %1, align 8, !dbg !145
  %8 = getelementptr inbounds i32*, i32** %7, i64 0, !dbg !145
  store i32* %6, i32** %8, align 8, !dbg !146
  %9 = call i8* @__ptauth_malloc(i64 16)
  %10 = bitcast i8* %9 to i32*, !dbg !147
  %11 = load i32**, i32*** %1, align 8, !dbg !148
  %12 = getelementptr inbounds i32*, i32** %11, i64 1, !dbg !148
  store i32* %10, i32** %12, align 8, !dbg !149
  %13 = call i8* @__ptauth_malloc(i64 16)
  %14 = bitcast i8* %13 to i32*, !dbg !150
  %15 = load i32**, i32*** %1, align 8, !dbg !151
  %16 = getelementptr inbounds i32*, i32** %15, i64 2, !dbg !151
  store i32* %14, i32** %16, align 8, !dbg !152
  %17 = load i32**, i32*** %1, align 8, !dbg !153
  %18 = bitcast i32** %17 to i8*, !dbg !154
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 8, i32 8, i1 false), !dbg !154
  %19 = load i32**, i32*** %1, align 8, !dbg !155
  %20 = getelementptr inbounds i32*, i32** %19, i64 1, !dbg !155
  %21 = load i32*, i32** %20, align 8, !dbg !155
  %22 = bitcast i32* %21 to i8*, !dbg !155
  %23 = call i8* @__nestedGEPCheck(i8* %22), !dbg !155
  %24 = bitcast i8* %23 to i32*, !dbg !155
  %25 = getelementptr inbounds i32, i32* %24, i64 1, !dbg !155
  store i32 1, i32* %25, align 4, !dbg !156
  %26 = load i32**, i32*** %1, align 8, !dbg !157
  %27 = getelementptr inbounds i32*, i32** %26, i64 1, !dbg !157
  %28 = load i32*, i32** %27, align 8, !dbg !157
  %29 = bitcast i32* %28 to i8*, !dbg !157
  call void @__ptauth_free(i8* %29)
  call void @llvm.dbg.declare(metadata i32* %2, metadata !158, metadata !DIExpression()), !dbg !159
  %30 = load i32**, i32*** %1, align 8, !dbg !160
  %31 = getelementptr inbounds i32*, i32** %30, i64 1, !dbg !160
  %32 = load i32*, i32** %31, align 8, !dbg !160
  %33 = bitcast i32* %32 to i8*, !dbg !160
  %34 = call i8* @__nestedGEPCheck(i8* %33), !dbg !160
  %35 = bitcast i8* %34 to i32*, !dbg !160
  %36 = getelementptr inbounds i32, i32* %35, i64 1, !dbg !160
  %37 = load i32, i32* %36, align 4, !dbg !160
  store i32 %37, i32* %2, align 4, !dbg !159
  %38 = load i32, i32* %2, align 4, !dbg !161
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15.46, i32 0, i32 0), i32 %38), !dbg !162
  %40 = load i32**, i32*** %1, align 8, !dbg !163
  %41 = getelementptr inbounds i32*, i32** %40, i64 0, !dbg !163
  %42 = load i32*, i32** %41, align 8, !dbg !163
  %43 = bitcast i32* %42 to i8*, !dbg !163
  call void @__ptauth_free(i8* %43)
  %44 = load i32**, i32*** %1, align 8, !dbg !164
  %45 = getelementptr inbounds i32*, i32** %44, i64 2, !dbg !164
  %46 = load i32*, i32** %45, align 8, !dbg !164
  %47 = bitcast i32* %46 to i8*, !dbg !164
  call void @__ptauth_free(i8* %47)
  %48 = load i32**, i32*** %1, align 8, !dbg !165
  %49 = bitcast i32** %48 to i8*, !dbg !165
  call void @__ptauth_free(i8* %49)
  ret void, !dbg !166
}

; Function Attrs: noinline nounwind optnone
define void @use_after_free5() #0 !dbg !167 {
  %1 = alloca %struct.person*, align 8
  %2 = alloca %struct.person*, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.person** %1, metadata !168, metadata !DIExpression()), !dbg !169
  %4 = call i8* @__ptauth_malloc(i64 24)
  %5 = bitcast i8* %4 to %struct.person*, !dbg !170
  store %struct.person* %5, %struct.person** %1, align 8, !dbg !169
  call void @llvm.dbg.declare(metadata %struct.person** %2, metadata !171, metadata !DIExpression()), !dbg !172
  %6 = load %struct.person*, %struct.person** %1, align 8, !dbg !173
  store %struct.person* %6, %struct.person** %2, align 8, !dbg !172
  %7 = load %struct.person*, %struct.person** %2, align 8, !dbg !174
  %8 = bitcast %struct.person* %7 to i8*, !dbg !175
  %9 = call i8* @__loadCheck(i8* %8), !dbg !175
  call void @set_info(%struct.person* %7, i32 25, i64 50), !dbg !175
  %10 = load %struct.person*, %struct.person** %2, align 8, !dbg !176
  %11 = bitcast %struct.person* %10 to i8*, !dbg !177
  %12 = call i8* @__loadCheck(i8* %11), !dbg !177
  call void @print_person(%struct.person* %10), !dbg !177
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2.33, i32 0, i32 0)), !dbg !178
  call void @llvm.dbg.declare(metadata i32* %3, metadata !179, metadata !DIExpression()), !dbg !180
  %14 = load %struct.person*, %struct.person** %2, align 8, !dbg !181
  %15 = bitcast %struct.person* %14 to i8*, !dbg !182
  %16 = call i8* @__GEPCheck(i8* %15), !dbg !182
  %17 = bitcast i8* %16 to %struct.person*, !dbg !182
  %18 = getelementptr inbounds %struct.person, %struct.person* %17, i32 0, i32 2, !dbg !182
  %19 = load i64, i64* %18, align 8, !dbg !182
  %20 = trunc i64 %19 to i32, !dbg !181
  store i32 %20, i32* %3, align 4, !dbg !180
  ret void, !dbg !183
}

; Function Attrs: noinline nounwind optnone
define void @test_backward() #0 !dbg !184 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32** %1, metadata !185, metadata !DIExpression()), !dbg !186
  %3 = call i8* @__ptauth_malloc(i64 800)
  %4 = bitcast i8* %3 to i32*, !dbg !187
  store i32* %4, i32** %1, align 8, !dbg !186
  %5 = load i32*, i32** %1, align 8, !dbg !188
  %6 = getelementptr inbounds i32, i32* %5, i64 150, !dbg !188
  store i32 1, i32* %6, align 4, !dbg !189
  %7 = load i32*, i32** %1, align 8, !dbg !190
  %8 = bitcast i32* %7 to i8*, !dbg !190
  call void @__ptauth_free(i8* %8)
  call void @llvm.dbg.declare(metadata i32* %2, metadata !191, metadata !DIExpression()), !dbg !192
  %9 = load i32*, i32** %1, align 8, !dbg !193
  %10 = bitcast i32* %9 to i8*, !dbg !193
  %11 = call i8* @__GEPCheck(i8* %10), !dbg !193
  %12 = bitcast i8* %11 to i32*, !dbg !193
  %13 = getelementptr inbounds i32, i32* %12, i64 150, !dbg !193
  %14 = load i32, i32* %13, align 4, !dbg !193
  store i32 %14, i32* %2, align 4, !dbg !192
  ret void, !dbg !194
}

; Function Attrs: noinline nounwind optnone
define void @double_free() #0 !dbg !195 {
  %1 = alloca %struct.person*, align 8
  call void @llvm.dbg.declare(metadata %struct.person** %1, metadata !196, metadata !DIExpression()), !dbg !197
  %2 = call i8* @__ptauth_malloc(i64 24)
  %3 = bitcast i8* %2 to %struct.person*, !dbg !198
  store %struct.person* %3, %struct.person** %1, align 8, !dbg !197
  %4 = load %struct.person*, %struct.person** %1, align 8, !dbg !199
  %5 = bitcast %struct.person* %4 to i8*, !dbg !200
  %6 = call i8* @__loadCheck(i8* %5), !dbg !200
  call void @set_info(%struct.person* %4, i32 25, i64 50), !dbg !200
  %7 = load %struct.person*, %struct.person** %1, align 8, !dbg !201
  %8 = bitcast %struct.person* %7 to i8*, !dbg !202
  %9 = call i8* @__loadCheck(i8* %8), !dbg !202
  call void @print_person(%struct.person* %7), !dbg !202
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.16.47, i32 0, i32 0)), !dbg !203
  %11 = load %struct.person*, %struct.person** %1, align 8, !dbg !204
  %12 = bitcast %struct.person* %11 to i8*, !dbg !204
  call void @__ptauth_free(i8* %12)
  ret void, !dbg !205
}

; Function Attrs: noinline nounwind optnone
define void @invalid_free() #0 !dbg !206 {
  %1 = alloca %struct.person*, align 8
  call void @llvm.dbg.declare(metadata %struct.person** %1, metadata !207, metadata !DIExpression()), !dbg !208
  %2 = call i8* @__ptauth_malloc(i64 24)
  %3 = bitcast i8* %2 to %struct.person*, !dbg !209
  store %struct.person* %3, %struct.person** %1, align 8, !dbg !208
  %4 = load %struct.person*, %struct.person** %1, align 8, !dbg !210
  %5 = bitcast %struct.person* %4 to i8*, !dbg !211
  %6 = call i8* @__loadCheck(i8* %5), !dbg !211
  call void @set_info(%struct.person* %4, i32 25, i64 50), !dbg !211
  %7 = load %struct.person*, %struct.person** %1, align 8, !dbg !212
  %8 = bitcast %struct.person* %7 to i8*, !dbg !213
  %9 = call i8* @__GEPCheck(i8* %8), !dbg !213
  %10 = bitcast i8* %9 to %struct.person*, !dbg !213
  %11 = getelementptr inbounds %struct.person, %struct.person* %10, i64 1, !dbg !213
  store %struct.person* %11, %struct.person** %1, align 8, !dbg !214
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.17.48, i32 0, i32 0)), !dbg !215
  %13 = load %struct.person*, %struct.person** %1, align 8, !dbg !216
  %14 = bitcast %struct.person* %13 to i8*, !dbg !216
  call void @__ptauth_free(i8* %14)
  ret void, !dbg !217
}

; Function Attrs: noinline nounwind optnone
define void @print_usage() #0 !dbg !218 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0)), !dbg !219
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i32 0, i32 0)), !dbg !220
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i32 0, i32 0)), !dbg !221
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0)), !dbg !222
  call void @exit(i32 0) #9, !dbg !223
  unreachable, !dbg !223
                                                  ; No predecessors!
  ret void, !dbg !224
}

; Function Attrs: noinline nounwind optnone
define i32 @main(i32, i8**) #0 !dbg !225 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !229, metadata !DIExpression()), !dbg !230
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !231, metadata !DIExpression()), !dbg !232
  %6 = load i32, i32* %4, align 4, !dbg !233
  %7 = icmp slt i32 %6, 2, !dbg !235
  br i1 %7, label %8, label %9, !dbg !236

; <label>:8:                                      ; preds = %2
  call void @print_usage(), !dbg !237
  br label %9, !dbg !239

; <label>:9:                                      ; preds = %8, %2
  %10 = load i8**, i8*** %5, align 8, !dbg !240
  %11 = getelementptr inbounds i8*, i8** %10, i64 1, !dbg !240
  %12 = load i8*, i8** %11, align 8, !dbg !240
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #10, !dbg !242
  %14 = icmp eq i32 %13, 0, !dbg !243
  br i1 %14, label %15, label %16, !dbg !244

; <label>:15:                                     ; preds = %9
  call void @use_after_free1(), !dbg !245
  br label %16, !dbg !247

; <label>:16:                                     ; preds = %15, %9
  %17 = load i8**, i8*** %5, align 8, !dbg !248
  %18 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !248
  %19 = load i8*, i8** %18, align 8, !dbg !248
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)) #10, !dbg !250
  %21 = icmp eq i32 %20, 0, !dbg !251
  br i1 %21, label %22, label %23, !dbg !252

; <label>:22:                                     ; preds = %16
  call void @double_free(), !dbg !253
  br label %23, !dbg !255

; <label>:23:                                     ; preds = %22, %16
  %24 = load i8**, i8*** %5, align 8, !dbg !256
  %25 = getelementptr inbounds i8*, i8** %24, i64 1, !dbg !256
  %26 = load i8*, i8** %25, align 8, !dbg !256
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0)) #10, !dbg !258
  %28 = icmp eq i32 %27, 0, !dbg !259
  br i1 %28, label %29, label %30, !dbg !260

; <label>:29:                                     ; preds = %23
  call void @invalid_free(), !dbg !261
  br label %30, !dbg !263

; <label>:30:                                     ; preds = %29, %23
  %31 = load i8**, i8*** %5, align 8, !dbg !264
  %32 = getelementptr inbounds i8*, i8** %31, i64 1, !dbg !264
  %33 = load i8*, i8** %32, align 8, !dbg !264
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #10, !dbg !266
  %35 = icmp eq i32 %34, 0, !dbg !267
  br i1 %35, label %36, label %37, !dbg !268

; <label>:36:                                     ; preds = %30
  call void @use_after_free2(), !dbg !269
  br label %37, !dbg !271

; <label>:37:                                     ; preds = %36, %30
  %38 = load i8**, i8*** %5, align 8, !dbg !272
  %39 = getelementptr inbounds i8*, i8** %38, i64 1, !dbg !272
  %40 = load i8*, i8** %39, align 8, !dbg !272
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0)) #10, !dbg !274
  %42 = icmp eq i32 %41, 0, !dbg !275
  br i1 %42, label %43, label %44, !dbg !276

; <label>:43:                                     ; preds = %37
  call void @use_after_free3(), !dbg !277
  br label %44, !dbg !279

; <label>:44:                                     ; preds = %43, %37
  %45 = load i8**, i8*** %5, align 8, !dbg !280
  %46 = getelementptr inbounds i8*, i8** %45, i64 1, !dbg !280
  %47 = load i8*, i8** %46, align 8, !dbg !280
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)) #10, !dbg !282
  %49 = icmp eq i32 %48, 0, !dbg !283
  br i1 %49, label %50, label %51, !dbg !284

; <label>:50:                                     ; preds = %44
  call void @use_after_free4(), !dbg !285
  br label %51, !dbg !287

; <label>:51:                                     ; preds = %50, %44
  %52 = load i8**, i8*** %5, align 8, !dbg !288
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !288
  %54 = load i8*, i8** %53, align 8, !dbg !288
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #10, !dbg !290
  %56 = icmp eq i32 %55, 0, !dbg !291
  br i1 %56, label %57, label %58, !dbg !292

; <label>:57:                                     ; preds = %51
  call void @use_after_free5(), !dbg !293
  br label %58, !dbg !295

; <label>:58:                                     ; preds = %57, %51
  %59 = load i8**, i8*** %5, align 8, !dbg !296
  %60 = getelementptr inbounds i8*, i8** %59, i64 1, !dbg !296
  %61 = load i8*, i8** %60, align 8, !dbg !296
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0)) #10, !dbg !298
  %63 = icmp eq i32 %62, 0, !dbg !299
  br i1 %63, label %64, label %65, !dbg !300

; <label>:64:                                     ; preds = %58
  call void @test_backward(), !dbg !301
  br label %66, !dbg !303

; <label>:65:                                     ; preds = %58
  call void @print_usage(), !dbg !304
  br label %66

; <label>:66:                                     ; preds = %65, %64
  ret i32 0, !dbg !306
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
!7 = !{!8, !12, !18, !27, !28}
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
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME", file: !5, line: 16, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "name", file: !5, line: 13, size: 128, elements: !21)
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "myname", scope: !20, file: !5, line: 14, baseType: !12, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !20, file: !5, line: 15, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !12}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !{i32 807}
!31 = !{i32 847}
!32 = !{i32 887}
!33 = !{i32 927}
!34 = distinct !DISubprogram(name: "set_info", scope: !5, file: !5, line: 18, type: !35, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: false, unit: !4, variables: !6)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !8, !15, !17}
!37 = !DILocalVariable(name: "p", arg: 1, scope: !34, file: !5, line: 18, type: !8)
!38 = !DILocation(line: 18, column: 30, scope: !34)
!39 = !DILocalVariable(name: "age", arg: 2, scope: !34, file: !5, line: 18, type: !15)
!40 = !DILocation(line: 18, column: 46, scope: !34)
!41 = !DILocalVariable(name: "ID", arg: 3, scope: !34, file: !5, line: 18, type: !17)
!42 = !DILocation(line: 18, column: 65, scope: !34)
!43 = !DILocation(line: 19, column: 11, scope: !34)
!44 = !DILocation(line: 19, column: 2, scope: !34)
!45 = !DILocation(line: 19, column: 5, scope: !34)
!46 = !DILocation(line: 19, column: 9, scope: !34)
!47 = !DILocation(line: 20, column: 9, scope: !34)
!48 = !DILocation(line: 20, column: 2, scope: !34)
!49 = !DILocation(line: 20, column: 5, scope: !34)
!50 = !DILocation(line: 20, column: 7, scope: !34)
!51 = !DILocation(line: 21, column: 1, scope: !34)
!52 = distinct !DISubprogram(name: "print_person", scope: !5, file: !5, line: 23, type: !53, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: false, unit: !4, variables: !6)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !8}
!55 = !DILocalVariable(name: "p", arg: 1, scope: !52, file: !5, line: 23, type: !8)
!56 = !DILocation(line: 23, column: 34, scope: !52)
!57 = !DILocation(line: 24, column: 34, scope: !52)
!58 = !DILocation(line: 24, column: 37, scope: !52)
!59 = !DILocation(line: 24, column: 2, scope: !52)
!60 = !DILocation(line: 25, column: 34, scope: !52)
!61 = !DILocation(line: 25, column: 37, scope: !52)
!62 = !DILocation(line: 25, column: 2, scope: !52)
!63 = !DILocation(line: 26, column: 7, scope: !52)
!64 = !DILocation(line: 27, column: 1, scope: !52)
!65 = distinct !DISubprogram(name: "use_after_free1", scope: !5, file: !5, line: 29, type: !66, isLocal: false, isDefinition: true, scopeLine: 29, isOptimized: false, unit: !4, variables: !6)
!66 = !DISubroutineType(types: !67)
!67 = !{null}
!68 = !DILocalVariable(name: "p", scope: !65, file: !5, line: 30, type: !8)
!69 = !DILocation(line: 30, column: 17, scope: !65)
!70 = !DILocation(line: 30, column: 21, scope: !65)
!71 = !DILocation(line: 32, column: 11, scope: !65)
!72 = !DILocation(line: 32, column: 2, scope: !65)
!73 = !DILocation(line: 33, column: 15, scope: !65)
!74 = !DILocation(line: 33, column: 2, scope: !65)
!75 = !DILocation(line: 35, column: 2, scope: !65)
!76 = !DILocalVariable(name: "ID", scope: !65, file: !5, line: 36, type: !29)
!77 = !DILocation(line: 36, column: 6, scope: !65)
!78 = !DILocation(line: 36, column: 11, scope: !65)
!79 = !DILocation(line: 36, column: 14, scope: !65)
!80 = !DILocation(line: 37, column: 1, scope: !65)
!81 = distinct !DISubprogram(name: "use_after_free2", scope: !5, file: !5, line: 39, type: !66, isLocal: false, isDefinition: true, scopeLine: 39, isOptimized: false, unit: !4, variables: !6)
!82 = !DILocalVariable(name: "buf1", scope: !81, file: !5, line: 40, type: !12)
!83 = !DILocation(line: 40, column: 8, scope: !81)
!84 = !DILocalVariable(name: "buf2", scope: !81, file: !5, line: 41, type: !12)
!85 = !DILocation(line: 41, column: 11, scope: !81)
!86 = !DILocation(line: 43, column: 10, scope: !81)
!87 = !DILocation(line: 44, column: 27, scope: !81)
!88 = !DILocation(line: 44, column: 5, scope: !81)
!89 = !DILocation(line: 45, column: 10, scope: !81)
!90 = !DILocation(line: 48, column: 10, scope: !81)
!91 = !DILocation(line: 49, column: 29, scope: !81)
!92 = !DILocation(line: 49, column: 5, scope: !81)
!93 = !DILocation(line: 52, column: 12, scope: !81)
!94 = !DILocation(line: 52, column: 5, scope: !81)
!95 = !DILocation(line: 53, column: 26, scope: !81)
!96 = !DILocation(line: 53, column: 25, scope: !81)
!97 = !DILocation(line: 53, column: 5, scope: !81)
!98 = !DILocation(line: 56, column: 5, scope: !81)
!99 = !DILocation(line: 57, column: 13, scope: !81)
!100 = !DILocation(line: 57, column: 5, scope: !81)
!101 = !DILocation(line: 58, column: 27, scope: !81)
!102 = !DILocation(line: 58, column: 5, scope: !81)
!103 = !DILocation(line: 60, column: 10, scope: !81)
!104 = !DILocation(line: 61, column: 2, scope: !81)
!105 = distinct !DISubprogram(name: "myprint", scope: !5, file: !5, line: 63, type: !25, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !4, variables: !6)
!106 = !DILocalVariable(name: "str", arg: 1, scope: !105, file: !5, line: 63, type: !12)
!107 = !DILocation(line: 63, column: 20, scope: !105)
!108 = !DILocation(line: 63, column: 42, scope: !105)
!109 = !DILocation(line: 63, column: 27, scope: !105)
!110 = !DILocation(line: 63, column: 48, scope: !105)
!111 = distinct !DISubprogram(name: "printmyname", scope: !5, file: !5, line: 64, type: !66, isLocal: false, isDefinition: true, scopeLine: 64, isOptimized: false, unit: !4, variables: !6)
!112 = !DILocation(line: 64, column: 22, scope: !111)
!113 = !DILocation(line: 64, column: 54, scope: !111)
!114 = distinct !DISubprogram(name: "use_after_free3", scope: !5, file: !5, line: 66, type: !66, isLocal: false, isDefinition: true, scopeLine: 66, isOptimized: false, unit: !4, variables: !6)
!115 = !DILocalVariable(name: "a", scope: !114, file: !5, line: 67, type: !18)
!116 = !DILocation(line: 67, column: 8, scope: !114)
!117 = !DILocation(line: 68, column: 6, scope: !114)
!118 = !DILocation(line: 68, column: 4, scope: !114)
!119 = !DILocation(line: 69, column: 2, scope: !114)
!120 = !DILocation(line: 69, column: 5, scope: !114)
!121 = !DILocation(line: 69, column: 10, scope: !114)
!122 = !DILocation(line: 70, column: 2, scope: !114)
!123 = !DILocation(line: 70, column: 5, scope: !114)
!124 = !DILocation(line: 70, column: 12, scope: !114)
!125 = !DILocation(line: 71, column: 2, scope: !114)
!126 = !DILocation(line: 71, column: 5, scope: !114)
!127 = !DILocation(line: 73, column: 7, scope: !114)
!128 = !DILocation(line: 74, column: 2, scope: !114)
!129 = !DILocation(line: 74, column: 5, scope: !114)
!130 = !DILocation(line: 76, column: 2, scope: !114)
!131 = !DILocation(line: 76, column: 5, scope: !114)
!132 = !DILocation(line: 76, column: 10, scope: !114)
!133 = !DILocation(line: 77, column: 2, scope: !114)
!134 = !DILocation(line: 77, column: 5, scope: !114)
!135 = !DILocation(line: 79, column: 4, scope: !114)
!136 = !DILocation(line: 80, column: 2, scope: !114)
!137 = !DILocation(line: 81, column: 2, scope: !114)
!138 = !DILocation(line: 81, column: 5, scope: !114)
!139 = !DILocation(line: 82, column: 1, scope: !114)
!140 = distinct !DISubprogram(name: "use_after_free4", scope: !5, file: !5, line: 84, type: !66, isLocal: false, isDefinition: true, scopeLine: 84, isOptimized: false, unit: !4, variables: !6)
!141 = !DILocalVariable(name: "p", scope: !140, file: !5, line: 85, type: !27)
!142 = !DILocation(line: 85, column: 8, scope: !140)
!143 = !DILocation(line: 85, column: 12, scope: !140)
!144 = !DILocation(line: 87, column: 9, scope: !140)
!145 = !DILocation(line: 87, column: 2, scope: !140)
!146 = !DILocation(line: 87, column: 7, scope: !140)
!147 = !DILocation(line: 88, column: 9, scope: !140)
!148 = !DILocation(line: 88, column: 2, scope: !140)
!149 = !DILocation(line: 88, column: 7, scope: !140)
!150 = !DILocation(line: 89, column: 9, scope: !140)
!151 = !DILocation(line: 89, column: 2, scope: !140)
!152 = !DILocation(line: 89, column: 7, scope: !140)
!153 = !DILocation(line: 91, column: 9, scope: !140)
!154 = !DILocation(line: 91, column: 2, scope: !140)
!155 = !DILocation(line: 92, column: 2, scope: !140)
!156 = !DILocation(line: 92, column: 10, scope: !140)
!157 = !DILocation(line: 93, column: 7, scope: !140)
!158 = !DILocalVariable(name: "ID", scope: !140, file: !5, line: 95, type: !29)
!159 = !DILocation(line: 95, column: 6, scope: !140)
!160 = !DILocation(line: 95, column: 11, scope: !140)
!161 = !DILocation(line: 96, column: 27, scope: !140)
!162 = !DILocation(line: 96, column: 2, scope: !140)
!163 = !DILocation(line: 98, column: 7, scope: !140)
!164 = !DILocation(line: 99, column: 7, scope: !140)
!165 = !DILocation(line: 100, column: 7, scope: !140)
!166 = !DILocation(line: 102, column: 1, scope: !140)
!167 = distinct !DISubprogram(name: "use_after_free5", scope: !5, file: !5, line: 104, type: !66, isLocal: false, isDefinition: true, scopeLine: 104, isOptimized: false, unit: !4, variables: !6)
!168 = !DILocalVariable(name: "p", scope: !167, file: !5, line: 105, type: !8)
!169 = !DILocation(line: 105, column: 17, scope: !167)
!170 = !DILocation(line: 105, column: 21, scope: !167)
!171 = !DILocalVariable(name: "p1", scope: !167, file: !5, line: 106, type: !8)
!172 = !DILocation(line: 106, column: 17, scope: !167)
!173 = !DILocation(line: 106, column: 25, scope: !167)
!174 = !DILocation(line: 108, column: 11, scope: !167)
!175 = !DILocation(line: 108, column: 2, scope: !167)
!176 = !DILocation(line: 109, column: 15, scope: !167)
!177 = !DILocation(line: 109, column: 2, scope: !167)
!178 = !DILocation(line: 111, column: 2, scope: !167)
!179 = !DILocalVariable(name: "ID", scope: !167, file: !5, line: 112, type: !29)
!180 = !DILocation(line: 112, column: 6, scope: !167)
!181 = !DILocation(line: 112, column: 11, scope: !167)
!182 = !DILocation(line: 112, column: 15, scope: !167)
!183 = !DILocation(line: 113, column: 1, scope: !167)
!184 = distinct !DISubprogram(name: "test_backward", scope: !5, file: !5, line: 115, type: !66, isLocal: false, isDefinition: true, scopeLine: 115, isOptimized: false, unit: !4, variables: !6)
!185 = !DILocalVariable(name: "p", scope: !184, file: !5, line: 116, type: !28)
!186 = !DILocation(line: 116, column: 7, scope: !184)
!187 = !DILocation(line: 116, column: 11, scope: !184)
!188 = !DILocation(line: 117, column: 2, scope: !184)
!189 = !DILocation(line: 117, column: 9, scope: !184)
!190 = !DILocation(line: 118, column: 7, scope: !184)
!191 = !DILocalVariable(name: "x", scope: !184, file: !5, line: 119, type: !29)
!192 = !DILocation(line: 119, column: 6, scope: !184)
!193 = !DILocation(line: 119, column: 10, scope: !184)
!194 = !DILocation(line: 121, column: 1, scope: !184)
!195 = distinct !DISubprogram(name: "double_free", scope: !5, file: !5, line: 123, type: !66, isLocal: false, isDefinition: true, scopeLine: 123, isOptimized: false, unit: !4, variables: !6)
!196 = !DILocalVariable(name: "p", scope: !195, file: !5, line: 125, type: !8)
!197 = !DILocation(line: 125, column: 17, scope: !195)
!198 = !DILocation(line: 125, column: 21, scope: !195)
!199 = !DILocation(line: 127, column: 11, scope: !195)
!200 = !DILocation(line: 127, column: 2, scope: !195)
!201 = !DILocation(line: 128, column: 15, scope: !195)
!202 = !DILocation(line: 128, column: 2, scope: !195)
!203 = !DILocation(line: 130, column: 2, scope: !195)
!204 = !DILocation(line: 131, column: 7, scope: !195)
!205 = !DILocation(line: 133, column: 1, scope: !195)
!206 = distinct !DISubprogram(name: "invalid_free", scope: !5, file: !5, line: 135, type: !66, isLocal: false, isDefinition: true, scopeLine: 135, isOptimized: false, unit: !4, variables: !6)
!207 = !DILocalVariable(name: "p", scope: !206, file: !5, line: 137, type: !8)
!208 = !DILocation(line: 137, column: 17, scope: !206)
!209 = !DILocation(line: 137, column: 21, scope: !206)
!210 = !DILocation(line: 139, column: 11, scope: !206)
!211 = !DILocation(line: 139, column: 2, scope: !206)
!212 = !DILocation(line: 140, column: 6, scope: !206)
!213 = !DILocation(line: 140, column: 8, scope: !206)
!214 = !DILocation(line: 140, column: 4, scope: !206)
!215 = !DILocation(line: 142, column: 2, scope: !206)
!216 = !DILocation(line: 143, column: 7, scope: !206)
!217 = !DILocation(line: 145, column: 1, scope: !206)
!218 = distinct !DISubprogram(name: "print_usage", scope: !5, file: !5, line: 147, type: !66, isLocal: false, isDefinition: true, scopeLine: 147, isOptimized: false, unit: !4, variables: !6)
!219 = !DILocation(line: 148, column: 2, scope: !218)
!220 = !DILocation(line: 149, column: 2, scope: !218)
!221 = !DILocation(line: 150, column: 2, scope: !218)
!222 = !DILocation(line: 151, column: 2, scope: !218)
!223 = !DILocation(line: 152, column: 2, scope: !218)
!224 = !DILocation(line: 153, column: 1, scope: !218)
!225 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 155, type: !226, isLocal: false, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !4, variables: !6)
!226 = !DISubroutineType(types: !227)
!227 = !{!29, !29, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!229 = !DILocalVariable(name: "argc", arg: 1, scope: !225, file: !5, line: 155, type: !29)
!230 = !DILocation(line: 155, column: 15, scope: !225)
!231 = !DILocalVariable(name: "argv", arg: 2, scope: !225, file: !5, line: 155, type: !228)
!232 = !DILocation(line: 155, column: 27, scope: !225)
!233 = !DILocation(line: 158, column: 5, scope: !234)
!234 = distinct !DILexicalBlock(scope: !225, file: !5, line: 158, column: 5)
!235 = !DILocation(line: 158, column: 10, scope: !234)
!236 = !DILocation(line: 158, column: 5, scope: !225)
!237 = !DILocation(line: 159, column: 3, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !5, line: 158, column: 15)
!239 = !DILocation(line: 160, column: 2, scope: !238)
!240 = !DILocation(line: 162, column: 14, scope: !241)
!241 = distinct !DILexicalBlock(scope: !225, file: !5, line: 162, column: 6)
!242 = !DILocation(line: 162, column: 6, scope: !241)
!243 = !DILocation(line: 162, column: 31, scope: !241)
!244 = !DILocation(line: 162, column: 6, scope: !225)
!245 = !DILocation(line: 163, column: 3, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !5, line: 162, column: 37)
!247 = !DILocation(line: 164, column: 2, scope: !246)
!248 = !DILocation(line: 166, column: 14, scope: !249)
!249 = distinct !DILexicalBlock(scope: !225, file: !5, line: 166, column: 6)
!250 = !DILocation(line: 166, column: 6, scope: !249)
!251 = !DILocation(line: 166, column: 29, scope: !249)
!252 = !DILocation(line: 166, column: 6, scope: !225)
!253 = !DILocation(line: 167, column: 3, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !5, line: 166, column: 35)
!255 = !DILocation(line: 168, column: 2, scope: !254)
!256 = !DILocation(line: 170, column: 14, scope: !257)
!257 = distinct !DILexicalBlock(scope: !225, file: !5, line: 170, column: 6)
!258 = !DILocation(line: 170, column: 6, scope: !257)
!259 = !DILocation(line: 170, column: 29, scope: !257)
!260 = !DILocation(line: 170, column: 6, scope: !225)
!261 = !DILocation(line: 171, column: 3, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !5, line: 170, column: 35)
!263 = !DILocation(line: 172, column: 2, scope: !262)
!264 = !DILocation(line: 174, column: 14, scope: !265)
!265 = distinct !DILexicalBlock(scope: !225, file: !5, line: 174, column: 6)
!266 = !DILocation(line: 174, column: 6, scope: !265)
!267 = !DILocation(line: 174, column: 31, scope: !265)
!268 = !DILocation(line: 174, column: 6, scope: !225)
!269 = !DILocation(line: 175, column: 3, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !5, line: 174, column: 37)
!271 = !DILocation(line: 176, column: 2, scope: !270)
!272 = !DILocation(line: 178, column: 14, scope: !273)
!273 = distinct !DILexicalBlock(scope: !225, file: !5, line: 178, column: 6)
!274 = !DILocation(line: 178, column: 6, scope: !273)
!275 = !DILocation(line: 178, column: 31, scope: !273)
!276 = !DILocation(line: 178, column: 6, scope: !225)
!277 = !DILocation(line: 179, column: 3, scope: !278)
!278 = distinct !DILexicalBlock(scope: !273, file: !5, line: 178, column: 37)
!279 = !DILocation(line: 180, column: 2, scope: !278)
!280 = !DILocation(line: 182, column: 14, scope: !281)
!281 = distinct !DILexicalBlock(scope: !225, file: !5, line: 182, column: 6)
!282 = !DILocation(line: 182, column: 6, scope: !281)
!283 = !DILocation(line: 182, column: 31, scope: !281)
!284 = !DILocation(line: 182, column: 6, scope: !225)
!285 = !DILocation(line: 183, column: 3, scope: !286)
!286 = distinct !DILexicalBlock(scope: !281, file: !5, line: 182, column: 37)
!287 = !DILocation(line: 184, column: 2, scope: !286)
!288 = !DILocation(line: 186, column: 14, scope: !289)
!289 = distinct !DILexicalBlock(scope: !225, file: !5, line: 186, column: 6)
!290 = !DILocation(line: 186, column: 6, scope: !289)
!291 = !DILocation(line: 186, column: 31, scope: !289)
!292 = !DILocation(line: 186, column: 6, scope: !225)
!293 = !DILocation(line: 187, column: 3, scope: !294)
!294 = distinct !DILexicalBlock(scope: !289, file: !5, line: 186, column: 37)
!295 = !DILocation(line: 188, column: 2, scope: !294)
!296 = !DILocation(line: 190, column: 14, scope: !297)
!297 = distinct !DILexicalBlock(scope: !225, file: !5, line: 190, column: 6)
!298 = !DILocation(line: 190, column: 6, scope: !297)
!299 = !DILocation(line: 190, column: 29, scope: !297)
!300 = !DILocation(line: 190, column: 6, scope: !225)
!301 = !DILocation(line: 191, column: 3, scope: !302)
!302 = distinct !DILexicalBlock(scope: !297, file: !5, line: 190, column: 35)
!303 = !DILocation(line: 192, column: 2, scope: !302)
!304 = !DILocation(line: 195, column: 3, scope: !305)
!305 = distinct !DILexicalBlock(scope: !297, file: !5, line: 194, column: 7)
!306 = !DILocation(line: 198, column: 2, scope: !225)
