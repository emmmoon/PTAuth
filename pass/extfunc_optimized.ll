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
@pg = common global i32* null, align 8, !dbg !0
@gloab = common global [10 x i32] zeroinitializer, align 4, !dbg !29
@.str.31 = private unnamed_addr constant [26 x i8] c"The globalvariant is %d.\0A\00", align 1
@.str.1.32 = private unnamed_addr constant [21 x i8] c"Person ID is = %ld \0A\00", align 1
@.str.2.33 = private unnamed_addr constant [21 x i8] c"Person age is = %d \0A\00", align 1
@.str.3.34 = private unnamed_addr constant [86 x i8] c"Dereferencing p dangling pointer. PTAuth should terminate the program at this point.\0A\00", align 1
@.str.4.35 = private unnamed_addr constant [11 x i8] c"buf1:0x%p\0A\00", align 1
@.str.5.36 = private unnamed_addr constant [12 x i8] c"buf2:0x%p\0A\0A\00", align 1
@.str.6.37 = private unnamed_addr constant [9 x i8] c"buf2:%d\0A\00", align 1
@.str.7.38 = private unnamed_addr constant [25 x i8] c"==== Use After Free ===\0A\00", align 1
@.str.8.39 = private unnamed_addr constant [5 x i8] c"hack\00", align 1
@.str.9.40 = private unnamed_addr constant [10 x i8] c"buf2:%s\0A\0A\00", align 1
@.str.10.41 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11.42 = private unnamed_addr constant [20 x i8] c"call print my name\0A\00", align 1
@.str.12.43 = private unnamed_addr constant [18 x i8] c"I can also use it\00", align 1
@.str.13.44 = private unnamed_addr constant [20 x i8] c"this is my function\00", align 1
@.str.14.45 = private unnamed_addr constant [27 x i8] c"this pogram will crash...\0A\00", align 1
@.str.15.46 = private unnamed_addr constant [22 x i8] c"can not be printed...\00", align 1
@.str.16.47 = private unnamed_addr constant [15 x i8] c"The ID is %d.\0A\00", align 1
@.str.17.48 = private unnamed_addr constant [74 x i8] c"Free a freed pointer. PTAuth should terminate the program at this point.\0A\00", align 1
@.str.18 = private unnamed_addr constant [79 x i8] c"Invalid free of a pointer. PTAuth should terminate the program at this point.\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Usage: ./stest.arm.elf [OPTIONS]\0A\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"./stest.arm.elf uaf     Trigger the Use-After-Free bug\0A\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"./stest.arm.elf df      Trigger the Double-Free bug\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"./stest.arm.elf if      Trigger the Invalid-Free bug\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"uaf1\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"uaf2\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"uaf3\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"uaf4\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"uaf5\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"uaf6\00", align 1
@.str.31.49 = private unnamed_addr constant [5 x i8] c"uaf7\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"uaf8\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"tb\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"tgl\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"tgl1\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"tsv\00", align 1

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
  %4 = alloca %struct.Metadata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.Metadata*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  %14 = call i32 @checkTBI()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

; <label>:16:                                     ; preds = %2
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 1) #9
  unreachable

; <label>:18:                                     ; preds = %2
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %64

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %21
  br label %63

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr inbounds i32, i32* %28, i64 -2
  %30 = bitcast i32* %29 to i8*
  %31 = bitcast i8* %30 to %struct.Metadata*
  store %struct.Metadata* %31, %struct.Metadata** %4, align 8
  %32 = load %struct.Metadata*, %struct.Metadata** %4, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), %struct.Metadata* %32) #8
  %34 = load %struct.Metadata*, %struct.Metadata** %4, align 8
  %35 = ptrtoint %struct.Metadata* %34 to i64
  %36 = load i64, i64* @MASKHIGHBIT, align 8
  %37 = xor i64 %36, -1
  %38 = and i64 %35, %37
  %39 = inttoptr i64 %38 to i8*
  %40 = bitcast i8* %39 to %struct.Metadata*
  store %struct.Metadata* %40, %struct.Metadata** %4, align 8
  %41 = load %struct.Metadata*, %struct.Metadata** %4, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0), %struct.Metadata* %41) #8
  %43 = load %struct.Metadata*, %struct.Metadata** %4, align 8
  %44 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i32 0, i32 0), i64 %46) #8
  %48 = load i8*, i8** %3, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i8* @__autia(i8* %48, i64 %49, i8 70) #8
  store i8* %50, i8** %3, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

; <label>:53:                                     ; preds = %26
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0)) #8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0)) #8
  call void @exit(i32 0) #9
  unreachable

; <label>:56:                                     ; preds = %26
  %57 = load %struct.Metadata*, %struct.Metadata** %4, align 8
  %58 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %57, i32 0, i32 0
  store i64 2, i64* %58, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = getelementptr inbounds i32, i32* %60, i64 -2
  %62 = bitcast i32* %61 to i8*
  call void @free(i8* %62) #8
  br label %63

; <label>:63:                                     ; preds = %25, %56
  store i8* null, i8** %6, align 8
  br label %104

; <label>:64:                                     ; preds = %18
  %65 = load i8*, i8** %7, align 8
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load i64, i64* @MASKHIGHBIT, align 8
  %69 = xor i64 %68, -1
  %70 = and i64 %67, %69
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %7, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr i8, i8* %72, i64 -8
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 8
  %76 = call i8* @realloc(i8* %73, i64 %75) #8
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %103

; <label>:79:                                     ; preds = %64
  %80 = load i8*, i8** %9, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = getelementptr inbounds i32, i32* %81, i64 -2
  %83 = bitcast i32* %82 to i8*
  %84 = bitcast i8* %83 to %struct.Metadata*
  store %struct.Metadata* %84, %struct.Metadata** %11, align 8
  %85 = load %struct.Metadata*, %struct.Metadata** %11, align 8
  %86 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %85, i32 0, i32 0
  store i64 2, i64* %86, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = bitcast i8* %87 to %struct.Metadata*
  store %struct.Metadata* %88, %struct.Metadata** %11, align 8
  %89 = load %struct.Metadata*, %struct.Metadata** %11, align 8
  %90 = load i64, i64* %8, align 8
  %91 = trunc i64 %90 to i32
  call void @initMD(%struct.Metadata* %89, i32 %91)
  %92 = load %struct.Metadata*, %struct.Metadata** %11, align 8
  %93 = getelementptr inbounds %struct.Metadata, %struct.Metadata* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %12, align 8
  %95 = load %struct.Metadata*, %struct.Metadata** %11, align 8
  %96 = bitcast %struct.Metadata* %95 to i32*
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = bitcast i32* %97 to i8*
  store i8* %98, i8** %13, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i8* @__pacia(i8* %99, i64 %100)
  store i8* %101, i8** %13, align 8
  %102 = load i8*, i8** %13, align 8
  store i8* %102, i8** %6, align 8
  br label %104

; <label>:103:                                    ; preds = %64
  store i8* null, i8** %6, align 8
  br label %104

; <label>:104:                                    ; preds = %103, %79, %63
  %105 = load i8*, i8** %6, align 8
  ret i8* %105
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
  call void asm sideeffect "eor x0,x0,#0x2\0A", ""() #8, !srcloc !38
  call void asm sideeffect "eor x0,x0,#0x3\0A", ""() #8, !srcloc !39
  call void asm sideeffect "eor x0,x0,#0x2\0A", ""() #8, !srcloc !40
  call void asm sideeffect "eor x0,x0,#0x4\0A", ""() #8, !srcloc !41
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
define void @set_info(%struct.person*, i32, i64) #0 !dbg !42 {
  %4 = alloca %struct.person*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.person* %0, %struct.person** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.person** %4, metadata !45, metadata !DIExpression()), !dbg !46
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !47, metadata !DIExpression()), !dbg !48
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !49, metadata !DIExpression()), !dbg !50
  %7 = load i32, i32* %5, align 4, !dbg !51
  %8 = load %struct.person*, %struct.person** %4, align 8, !dbg !52
  %9 = getelementptr inbounds %struct.person, %struct.person* %8, i32 0, i32 1, !dbg !53
  store i32 %7, i32* %9, align 8, !dbg !54
  %10 = load i64, i64* %6, align 8, !dbg !55
  %11 = load %struct.person*, %struct.person** %4, align 8, !dbg !56
  %12 = getelementptr inbounds %struct.person, %struct.person* %11, i32 0, i32 2, !dbg !57
  store i64 %10, i64* %12, align 8, !dbg !58
  ret void, !dbg !59
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: noinline nounwind optnone
define void @malloc_global() #0 !dbg !60 {
  %1 = call i8* @__ptauth_malloc(i64 4)
  %2 = bitcast i8* %1 to i32*, !dbg !63
  store i32* %2, i32** @pg, align 8, !dbg !64
  %3 = load i32*, i32** @pg, align 8, !dbg !65
  %4 = bitcast i32* %3 to i8*, !dbg !65
  %5 = call i8* @__GEPCheck(i8* %4), !dbg !65
  %6 = bitcast i8* %5 to i32*, !dbg !65
  %7 = getelementptr inbounds i32, i32* %6, i64 0, !dbg !65
  store i32 1, i32* %7, align 4, !dbg !66
  %8 = load i32*, i32** @pg, align 8, !dbg !67
  %9 = bitcast i32* %8 to i8*, !dbg !67
  call void @__ptauth_free(i8* %9)
  ret void, !dbg !68
}

; Function Attrs: noinline nounwind optnone
define void @test_global() #0 !dbg !69 {
  %1 = alloca i32, align 4
  call void @malloc_global(), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %1, metadata !71, metadata !DIExpression()), !dbg !72
  %2 = load i32*, i32** @pg, align 8, !dbg !73
  %3 = bitcast i32* %2 to i8*, !dbg !73
  %4 = call i8* @__GEPCheck(i8* %3), !dbg !73
  %5 = bitcast i8* %4 to i32*, !dbg !73
  %6 = getelementptr inbounds i32, i32* %5, i64 0, !dbg !73
  %7 = load i32, i32* %6, align 4, !dbg !73
  store i32 %7, i32* %1, align 4, !dbg !72
  %8 = load i32, i32* %1, align 4, !dbg !74
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0), i32 %8), !dbg !75
  ret void, !dbg !76
}

; Function Attrs: noinline nounwind optnone
define void @test_global1() #0 !dbg !77 {
  %1 = alloca i32, align 4
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @gloab, i32 0, i32 0), i32** @pg, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %1, metadata !79, metadata !DIExpression()), !dbg !80
  %2 = load i32*, i32** @pg, align 8, !dbg !81
  %3 = bitcast i32* %2 to i8*, !dbg !81
  %4 = call i8* @__GEPCheck(i8* %3), !dbg !81
  %5 = bitcast i8* %4 to i32*, !dbg !81
  %6 = getelementptr inbounds i32, i32* %5, i64 0, !dbg !81
  %7 = load i32, i32* %6, align 4, !dbg !81
  store i32 %7, i32* %1, align 4, !dbg !80
  %8 = load i32, i32* %1, align 4, !dbg !82
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0), i32 %8), !dbg !83
  ret void, !dbg !84
}

; Function Attrs: noinline nounwind optnone
define void @just_return(i32*) #0 !dbg !85 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !88, metadata !DIExpression()), !dbg !89
  ret void, !dbg !90
}

; Function Attrs: noinline nounwind optnone
define void @print_person(%struct.person*) #0 !dbg !91 {
  %2 = alloca %struct.person*, align 8
  store %struct.person* %0, %struct.person** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.person** %2, metadata !94, metadata !DIExpression()), !dbg !95
  %3 = load %struct.person*, %struct.person** %2, align 8, !dbg !96
  %4 = getelementptr inbounds %struct.person, %struct.person* %3, i32 0, i32 2, !dbg !97
  %5 = load i64, i64* %4, align 8, !dbg !97
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.32, i32 0, i32 0), i64 %5), !dbg !98
  %7 = load %struct.person*, %struct.person** %2, align 8, !dbg !99
  %8 = getelementptr inbounds %struct.person, %struct.person* %7, i32 0, i32 1, !dbg !100
  %9 = load i32, i32* %8, align 8, !dbg !100
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.33, i32 0, i32 0), i32 %9), !dbg !101
  %11 = load %struct.person*, %struct.person** %2, align 8, !dbg !102
  %12 = bitcast %struct.person* %11 to i8*, !dbg !102
  call void @__ptauth_free(i8* %12)
  ret void, !dbg !103
}

; Function Attrs: noinline nounwind optnone
define void @use_after_free1() #0 !dbg !104 {
  %1 = alloca %struct.person*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.person** %1, metadata !105, metadata !DIExpression()), !dbg !106
  %3 = call i8* @__ptauth_malloc(i64 24)
  %4 = bitcast i8* %3 to %struct.person*, !dbg !107
  store %struct.person* %4, %struct.person** %1, align 8, !dbg !106
  %5 = load %struct.person*, %struct.person** %1, align 8, !dbg !108
  %6 = bitcast %struct.person* %5 to i8*, !dbg !109
  %7 = call i8* @__loadCheck(i8* %6), !dbg !109
  call void @set_info(%struct.person* %5, i32 25, i64 50), !dbg !109
  %8 = load %struct.person*, %struct.person** %1, align 8, !dbg !110
  %9 = bitcast %struct.person* %8 to i8*, !dbg !111
  %10 = call i8* @__loadCheck(i8* %9), !dbg !111
  call void @print_person(%struct.person* %8), !dbg !111
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3.34, i32 0, i32 0)), !dbg !112
  call void @llvm.dbg.declare(metadata i32* %2, metadata !113, metadata !DIExpression()), !dbg !114
  %12 = load %struct.person*, %struct.person** %1, align 8, !dbg !115
  %13 = bitcast %struct.person* %12 to i8*, !dbg !116
  %14 = call i8* @__GEPCheck(i8* %13), !dbg !116
  %15 = bitcast i8* %14 to %struct.person*, !dbg !116
  %16 = getelementptr inbounds %struct.person, %struct.person* %15, i32 0, i32 2, !dbg !116
  %17 = load i64, i64* %16, align 8, !dbg !116
  %18 = trunc i64 %17 to i32, !dbg !115
  store i32 %18, i32* %2, align 4, !dbg !114
  ret void, !dbg !117
}

; Function Attrs: noinline nounwind optnone
define void @use_after_free2() #0 !dbg !118 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i8** %2, metadata !121, metadata !DIExpression()), !dbg !122
  %3 = call i8* @__ptauth_malloc(i64 32)
  store i8* %3, i8** %1, align 8, !dbg !123
  %4 = load i8*, i8** %1, align 8, !dbg !124
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4.35, i32 0, i32 0), i8* %4), !dbg !125
  %6 = load i8*, i8** %1, align 8, !dbg !126
  call void @__ptauth_free(i8* %6)
  %7 = call i8* @__ptauth_malloc(i64 32)
  store i8* %7, i8** %2, align 8, !dbg !127
  %8 = load i8*, i8** %2, align 8, !dbg !128
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5.36, i32 0, i32 0), i8* %8), !dbg !129
  %10 = load i8*, i8** %2, align 8, !dbg !130
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 32, i32 1, i1 false), !dbg !131
  %11 = load i8*, i8** %2, align 8, !dbg !132
  %12 = load i8, i8* %11, align 1, !dbg !133
  %13 = zext i8 %12 to i32, !dbg !133
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6.37, i32 0, i32 0), i32 %13), !dbg !134
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7.38, i32 0, i32 0)), !dbg !135
  %16 = load i8*, i8** %1, align 8, !dbg !136
  %17 = call i8* @__loadCheck(i8* %16), !dbg !137
  %18 = call i8* @strncpy(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.39, i32 0, i32 0), i64 5) #8, !dbg !137
  %19 = load i8*, i8** %2, align 8, !dbg !138
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9.40, i32 0, i32 0), i8* %19), !dbg !139
  %21 = load i8*, i8** %2, align 8, !dbg !140
  call void @__ptauth_free(i8* %21)
  ret void, !dbg !141
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: noinline nounwind optnone
define void @myprint(i8*) #0 !dbg !142 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !143, metadata !DIExpression()), !dbg !144
  %3 = load i8*, i8** %2, align 8, !dbg !145
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10.41, i32 0, i32 0), i8* %3), !dbg !146
  ret void, !dbg !147
}

; Function Attrs: noinline nounwind optnone
define void @printmyname() #0 !dbg !148 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11.42, i32 0, i32 0)), !dbg !149
  ret void, !dbg !150
}

; Function Attrs: noinline nounwind optnone
define void @use_after_free3() #0 !dbg !151 {
  %1 = alloca %struct.name*, align 8
  call void @llvm.dbg.declare(metadata %struct.name** %1, metadata !152, metadata !DIExpression()), !dbg !153
  %2 = call i8* @__ptauth_malloc(i64 16)
  %3 = bitcast i8* %2 to %struct.name*, !dbg !154
  store %struct.name* %3, %struct.name** %1, align 8, !dbg !155
  %4 = load %struct.name*, %struct.name** %1, align 8, !dbg !156
  %5 = getelementptr inbounds %struct.name, %struct.name* %4, i32 0, i32 1, !dbg !157
  store void (i8*)* @myprint, void (i8*)** %5, align 8, !dbg !158
  %6 = load %struct.name*, %struct.name** %1, align 8, !dbg !159
  %7 = getelementptr inbounds %struct.name, %struct.name* %6, i32 0, i32 0, !dbg !160
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12.43, i32 0, i32 0), i8** %7, align 8, !dbg !161
  %8 = load %struct.name*, %struct.name** %1, align 8, !dbg !162
  %9 = getelementptr inbounds %struct.name, %struct.name* %8, i32 0, i32 1, !dbg !163
  %10 = load void (i8*)*, void (i8*)** %9, align 8, !dbg !163
  call void %10(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13.44, i32 0, i32 0)), !dbg !162
  %11 = load %struct.name*, %struct.name** %1, align 8, !dbg !164
  %12 = bitcast %struct.name* %11 to i8*, !dbg !164
  call void @__ptauth_free(i8* %12)
  %13 = load %struct.name*, %struct.name** %1, align 8, !dbg !165
  %14 = bitcast %struct.name* %13 to i8*, !dbg !166
  %15 = call i8* @__GEPCheck(i8* %14), !dbg !166
  %16 = bitcast i8* %15 to %struct.name*, !dbg !166
  %17 = getelementptr inbounds %struct.name, %struct.name* %16, i32 0, i32 1, !dbg !166
  %18 = load void (i8*)*, void (i8*)** %17, align 8, !dbg !166
  call void %18(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12.43, i32 0, i32 0)), !dbg !165
  %19 = load %struct.name*, %struct.name** %1, align 8, !dbg !167
  %20 = getelementptr inbounds %struct.name, %struct.name* %19, i32 0, i32 1, !dbg !168
  store void (i8*)* bitcast (void ()* @printmyname to void (i8*)*), void (i8*)** %20, align 8, !dbg !169
  %21 = load %struct.name*, %struct.name** %1, align 8, !dbg !170
  %22 = getelementptr inbounds %struct.name, %struct.name* %21, i32 0, i32 1, !dbg !171
  %23 = load void (i8*)*, void (i8*)** %22, align 8, !dbg !171
  call void %23(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13.44, i32 0, i32 0)), !dbg !170
  store %struct.name* null, %struct.name** %1, align 8, !dbg !172
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14.45, i32 0, i32 0)), !dbg !173
  %25 = load %struct.name*, %struct.name** %1, align 8, !dbg !174
  %26 = getelementptr inbounds %struct.name, %struct.name* %25, i32 0, i32 1, !dbg !175
  %27 = load void (i8*)*, void (i8*)** %26, align 8, !dbg !175
  call void %27(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.46, i32 0, i32 0)), !dbg !174
  ret void, !dbg !176
}

; Function Attrs: noinline nounwind optnone
define void @use_after_free4() #0 !dbg !177 {
  %1 = alloca i32**, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32*** %1, metadata !178, metadata !DIExpression()), !dbg !179
  %3 = call i8* @__ptauth_malloc(i64 24)
  %4 = bitcast i8* %3 to i32**, !dbg !180
  store i32** %4, i32*** %1, align 8, !dbg !179
  %5 = call i8* @__ptauth_malloc(i64 16)
  %6 = bitcast i8* %5 to i32*, !dbg !181
  %7 = load i32**, i32*** %1, align 8, !dbg !182
  %8 = getelementptr inbounds i32*, i32** %7, i64 0, !dbg !182
  store i32* %6, i32** %8, align 8, !dbg !183
  %9 = call i8* @__ptauth_malloc(i64 16)
  %10 = bitcast i8* %9 to i32*, !dbg !184
  %11 = load i32**, i32*** %1, align 8, !dbg !185
  %12 = getelementptr inbounds i32*, i32** %11, i64 1, !dbg !185
  store i32* %10, i32** %12, align 8, !dbg !186
  %13 = call i8* @__ptauth_malloc(i64 16)
  %14 = bitcast i8* %13 to i32*, !dbg !187
  %15 = load i32**, i32*** %1, align 8, !dbg !188
  %16 = getelementptr inbounds i32*, i32** %15, i64 2, !dbg !188
  store i32* %14, i32** %16, align 8, !dbg !189
  %17 = load i32**, i32*** %1, align 8, !dbg !190
  %18 = bitcast i32** %17 to i8*, !dbg !191
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 8, i32 8, i1 false), !dbg !191
  %19 = load i32**, i32*** %1, align 8, !dbg !192
  %20 = getelementptr inbounds i32*, i32** %19, i64 1, !dbg !192
  %21 = load i32*, i32** %20, align 8, !dbg !192
  %22 = bitcast i32* %21 to i8*, !dbg !192
  %23 = call i8* @__nestedGEPCheck(i8* %22), !dbg !192
  %24 = bitcast i8* %23 to i32*, !dbg !192
  %25 = getelementptr inbounds i32, i32* %24, i64 1, !dbg !192
  store i32 1, i32* %25, align 4, !dbg !193
  %26 = load i32**, i32*** %1, align 8, !dbg !194
  %27 = getelementptr inbounds i32*, i32** %26, i64 1, !dbg !194
  %28 = load i32*, i32** %27, align 8, !dbg !194
  %29 = bitcast i32* %28 to i8*, !dbg !194
  call void @__ptauth_free(i8* %29)
  call void @llvm.dbg.declare(metadata i32* %2, metadata !195, metadata !DIExpression()), !dbg !196
  %30 = load i32**, i32*** %1, align 8, !dbg !197
  %31 = getelementptr inbounds i32*, i32** %30, i64 1, !dbg !197
  %32 = load i32*, i32** %31, align 8, !dbg !197
  %33 = bitcast i32* %32 to i8*, !dbg !197
  %34 = call i8* @__nestedGEPCheck(i8* %33), !dbg !197
  %35 = bitcast i8* %34 to i32*, !dbg !197
  %36 = getelementptr inbounds i32, i32* %35, i64 1, !dbg !197
  %37 = load i32, i32* %36, align 4, !dbg !197
  store i32 %37, i32* %2, align 4, !dbg !196
  %38 = load i32, i32* %2, align 4, !dbg !198
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16.47, i32 0, i32 0), i32 %38), !dbg !199
  %40 = load i32**, i32*** %1, align 8, !dbg !200
  %41 = getelementptr inbounds i32*, i32** %40, i64 0, !dbg !200
  %42 = load i32*, i32** %41, align 8, !dbg !200
  %43 = bitcast i32* %42 to i8*, !dbg !200
  call void @__ptauth_free(i8* %43)
  %44 = load i32**, i32*** %1, align 8, !dbg !201
  %45 = getelementptr inbounds i32*, i32** %44, i64 2, !dbg !201
  %46 = load i32*, i32** %45, align 8, !dbg !201
  %47 = bitcast i32* %46 to i8*, !dbg !201
  call void @__ptauth_free(i8* %47)
  %48 = load i32**, i32*** %1, align 8, !dbg !202
  %49 = bitcast i32** %48 to i8*, !dbg !202
  call void @__ptauth_free(i8* %49)
  ret void, !dbg !203
}

; Function Attrs: noinline nounwind optnone
define void @use_after_free5() #0 !dbg !204 {
  %1 = alloca %struct.person*, align 8
  %2 = alloca %struct.person*, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.person** %1, metadata !205, metadata !DIExpression()), !dbg !206
  %4 = call i8* @__ptauth_malloc(i64 24)
  %5 = bitcast i8* %4 to %struct.person*, !dbg !207
  store %struct.person* %5, %struct.person** %1, align 8, !dbg !206
  call void @llvm.dbg.declare(metadata %struct.person** %2, metadata !208, metadata !DIExpression()), !dbg !209
  %6 = load %struct.person*, %struct.person** %1, align 8, !dbg !210
  store %struct.person* %6, %struct.person** %2, align 8, !dbg !209
  %7 = load %struct.person*, %struct.person** %2, align 8, !dbg !211
  %8 = bitcast %struct.person* %7 to i8*, !dbg !212
  %9 = call i8* @__loadCheck(i8* %8), !dbg !212
  call void @set_info(%struct.person* %7, i32 25, i64 50), !dbg !212
  %10 = load %struct.person*, %struct.person** %2, align 8, !dbg !213
  %11 = bitcast %struct.person* %10 to i8*, !dbg !214
  %12 = call i8* @__loadCheck(i8* %11), !dbg !214
  call void @print_person(%struct.person* %10), !dbg !214
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3.34, i32 0, i32 0)), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %3, metadata !216, metadata !DIExpression()), !dbg !217
  %14 = load %struct.person*, %struct.person** %2, align 8, !dbg !218
  %15 = bitcast %struct.person* %14 to i8*, !dbg !219
  %16 = call i8* @__GEPCheck(i8* %15), !dbg !219
  %17 = bitcast i8* %16 to %struct.person*, !dbg !219
  %18 = getelementptr inbounds %struct.person, %struct.person* %17, i32 0, i32 2, !dbg !219
  %19 = load i64, i64* %18, align 8, !dbg !219
  %20 = trunc i64 %19 to i32, !dbg !218
  store i32 %20, i32* %3, align 4, !dbg !217
  ret void, !dbg !220
}

; Function Attrs: noinline nounwind optnone
define void @use_after_free6() #0 !dbg !221 {
  %1 = alloca %struct.person*, align 8
  %2 = alloca %struct.person*, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.person** %1, metadata !222, metadata !DIExpression()), !dbg !223
  %4 = call i8* @__ptauth_malloc(i64 24)
  %5 = bitcast i8* %4 to %struct.person*, !dbg !224
  store %struct.person* %5, %struct.person** %1, align 8, !dbg !223
  %6 = load %struct.person*, %struct.person** %1, align 8, !dbg !225
  %7 = bitcast %struct.person* %6 to i8*, !dbg !226
  %8 = call i8* @__loadCheck(i8* %7), !dbg !226
  call void @set_info(%struct.person* %6, i32 25, i64 50), !dbg !226
  %9 = load %struct.person*, %struct.person** %1, align 8, !dbg !227
  %10 = bitcast %struct.person* %9 to i8*, !dbg !228
  %11 = call i8* @__loadCheck(i8* %10), !dbg !228
  call void @print_person(%struct.person* %9), !dbg !228
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3.34, i32 0, i32 0)), !dbg !229
  call void @llvm.dbg.declare(metadata %struct.person** %2, metadata !230, metadata !DIExpression()), !dbg !231
  %13 = load %struct.person*, %struct.person** %1, align 8, !dbg !232
  store %struct.person* %13, %struct.person** %2, align 8, !dbg !231
  call void @llvm.dbg.declare(metadata i32* %3, metadata !233, metadata !DIExpression()), !dbg !234
  %14 = load %struct.person*, %struct.person** %2, align 8, !dbg !235
  %15 = bitcast %struct.person* %14 to i8*, !dbg !236
  %16 = call i8* @__GEPCheck(i8* %15), !dbg !236
  %17 = bitcast i8* %16 to %struct.person*, !dbg !236
  %18 = getelementptr inbounds %struct.person, %struct.person* %17, i32 0, i32 2, !dbg !236
  %19 = load i64, i64* %18, align 8, !dbg !236
  %20 = trunc i64 %19 to i32, !dbg !235
  store i32 %20, i32* %3, align 4, !dbg !234
  ret void, !dbg !237
}

; Function Attrs: noinline nounwind optnone
define void @use_after_free7() #0 !dbg !238 {
  %1 = alloca %struct.person*, align 8
  %2 = alloca %struct.person*, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.person** %1, metadata !239, metadata !DIExpression()), !dbg !240
  %4 = call i8* @__ptauth_malloc(i64 24)
  %5 = bitcast i8* %4 to %struct.person*, !dbg !241
  store %struct.person* %5, %struct.person** %1, align 8, !dbg !240
  call void @llvm.dbg.declare(metadata %struct.person** %2, metadata !242, metadata !DIExpression()), !dbg !243
  %6 = load %struct.person*, %struct.person** %1, align 8, !dbg !244
  store %struct.person* %6, %struct.person** %2, align 8, !dbg !243
  %7 = load %struct.person*, %struct.person** %1, align 8, !dbg !245
  %8 = bitcast %struct.person* %7 to i8*, !dbg !246
  %9 = call i8* @__loadCheck(i8* %8), !dbg !246
  call void @set_info(%struct.person* %7, i32 25, i64 50), !dbg !246
  %10 = load %struct.person*, %struct.person** %1, align 8, !dbg !247
  %11 = bitcast %struct.person* %10 to i8*, !dbg !248
  %12 = call i8* @__loadCheck(i8* %11), !dbg !248
  call void @print_person(%struct.person* %10), !dbg !248
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3.34, i32 0, i32 0)), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %3, metadata !250, metadata !DIExpression()), !dbg !251
  %14 = load %struct.person*, %struct.person** %2, align 8, !dbg !252
  %15 = bitcast %struct.person* %14 to i8*, !dbg !253
  %16 = call i8* @__GEPCheck(i8* %15), !dbg !253
  %17 = bitcast i8* %16 to %struct.person*, !dbg !253
  %18 = getelementptr inbounds %struct.person, %struct.person* %17, i32 0, i32 2, !dbg !253
  %19 = load i64, i64* %18, align 8, !dbg !253
  %20 = trunc i64 %19 to i32, !dbg !252
  store i32 %20, i32* %3, align 4, !dbg !251
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind optnone
define void @use_after_free8() #0 !dbg !255 {
  %1 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %1, metadata !256, metadata !DIExpression()), !dbg !257
  %2 = call i8* @__ptauth_malloc(i64 40)
  %3 = bitcast i8* %2 to i32*, !dbg !258
  store i32* %3, i32** %1, align 8, !dbg !257
  %4 = load i32*, i32** %1, align 8, !dbg !259
  %5 = getelementptr inbounds i32, i32* %4, i64 1, !dbg !259
  store i32 1, i32* %5, align 4, !dbg !260
  %6 = load i32*, i32** %1, align 8, !dbg !261
  %7 = bitcast i32* %6 to i8*, !dbg !261
  call void @__ptauth_free(i8* %7)
  %8 = load i32*, i32** %1, align 8, !dbg !262
  %9 = bitcast i32* %8 to i8*, !dbg !263
  %10 = call i8* @__GEPCheck(i8* %9), !dbg !263
  %11 = bitcast i8* %10 to i32*, !dbg !263
  %12 = getelementptr inbounds i32, i32* %11, i64 1, !dbg !263
  call void @just_return(i32* %12), !dbg !264
  ret void, !dbg !265
}

; Function Attrs: noinline nounwind optnone
define void @test_backward() #0 !dbg !266 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32** %1, metadata !267, metadata !DIExpression()), !dbg !268
  %3 = call i8* @__ptauth_malloc(i64 4000)
  %4 = bitcast i8* %3 to i32*, !dbg !269
  store i32* %4, i32** %1, align 8, !dbg !268
  %5 = load i32*, i32** %1, align 8, !dbg !270
  %6 = getelementptr inbounds i32, i32* %5, i64 500, !dbg !270
  store i32 1, i32* %6, align 4, !dbg !271
  %7 = load i32*, i32** %1, align 8, !dbg !272
  %8 = bitcast i32* %7 to i8*, !dbg !273
  %9 = call i8* @__loadCheck(i8* %8), !dbg !273
  call void @just_return(i32* %7), !dbg !273
  call void @llvm.dbg.declare(metadata i32* %2, metadata !274, metadata !DIExpression()), !dbg !275
  %10 = load i32*, i32** %1, align 8, !dbg !276
  %11 = bitcast i32* %10 to i8*, !dbg !276
  %12 = call i8* @__GEPCheck(i8* %11), !dbg !276
  %13 = bitcast i8* %12 to i32*, !dbg !276
  %14 = getelementptr inbounds i32, i32* %13, i64 500, !dbg !276
  %15 = load i32, i32* %14, align 4, !dbg !276
  store i32 %15, i32* %2, align 4, !dbg !275
  %16 = load i32*, i32** %1, align 8, !dbg !277
  %17 = bitcast i32* %16 to i8*, !dbg !277
  call void @__ptauth_free(i8* %17)
  ret void, !dbg !278
}

; Function Attrs: noinline nounwind optnone
define void @test_stackvariable() #0 !dbg !279 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32** %1, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata i32* %2, metadata !282, metadata !DIExpression()), !dbg !283
  store i32 1, i32* %2, align 4, !dbg !283
  store i32* %2, i32** %1, align 8, !dbg !284
  %4 = load i32*, i32** %1, align 8, !dbg !285
  call void @just_return(i32* %4), !dbg !286
  call void @llvm.dbg.declare(metadata i32* %3, metadata !287, metadata !DIExpression()), !dbg !288
  %5 = load i32*, i32** %1, align 8, !dbg !289
  %6 = load i32, i32* %5, align 4, !dbg !290
  store i32 %6, i32* %3, align 4, !dbg !288
  ret void, !dbg !291
}

; Function Attrs: noinline nounwind optnone
define void @double_free() #0 !dbg !292 {
  %1 = alloca %struct.person*, align 8
  call void @llvm.dbg.declare(metadata %struct.person** %1, metadata !293, metadata !DIExpression()), !dbg !294
  %2 = call i8* @__ptauth_malloc(i64 24)
  %3 = bitcast i8* %2 to %struct.person*, !dbg !295
  store %struct.person* %3, %struct.person** %1, align 8, !dbg !294
  %4 = load %struct.person*, %struct.person** %1, align 8, !dbg !296
  %5 = bitcast %struct.person* %4 to i8*, !dbg !297
  %6 = call i8* @__loadCheck(i8* %5), !dbg !297
  call void @set_info(%struct.person* %4, i32 25, i64 50), !dbg !297
  %7 = load %struct.person*, %struct.person** %1, align 8, !dbg !298
  %8 = bitcast %struct.person* %7 to i8*, !dbg !299
  %9 = call i8* @__loadCheck(i8* %8), !dbg !299
  call void @print_person(%struct.person* %7), !dbg !299
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.17.48, i32 0, i32 0)), !dbg !300
  %11 = load %struct.person*, %struct.person** %1, align 8, !dbg !301
  %12 = bitcast %struct.person* %11 to i8*, !dbg !301
  call void @__ptauth_free(i8* %12)
  ret void, !dbg !302
}

; Function Attrs: noinline nounwind optnone
define void @invalid_free() #0 !dbg !303 {
  %1 = alloca %struct.person*, align 8
  call void @llvm.dbg.declare(metadata %struct.person** %1, metadata !304, metadata !DIExpression()), !dbg !305
  %2 = call i8* @__ptauth_malloc(i64 24)
  %3 = bitcast i8* %2 to %struct.person*, !dbg !306
  store %struct.person* %3, %struct.person** %1, align 8, !dbg !305
  %4 = load %struct.person*, %struct.person** %1, align 8, !dbg !307
  %5 = bitcast %struct.person* %4 to i8*, !dbg !308
  %6 = call i8* @__loadCheck(i8* %5), !dbg !308
  call void @set_info(%struct.person* %4, i32 25, i64 50), !dbg !308
  %7 = load %struct.person*, %struct.person** %1, align 8, !dbg !309
  %8 = bitcast %struct.person* %7 to i8*, !dbg !310
  %9 = call i8* @__GEPCheck(i8* %8), !dbg !310
  %10 = bitcast i8* %9 to %struct.person*, !dbg !310
  %11 = getelementptr inbounds %struct.person, %struct.person* %10, i64 1, !dbg !310
  store %struct.person* %11, %struct.person** %1, align 8, !dbg !311
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.18, i32 0, i32 0)), !dbg !312
  %13 = load %struct.person*, %struct.person** %1, align 8, !dbg !313
  %14 = bitcast %struct.person* %13 to i8*, !dbg !313
  call void @__ptauth_free(i8* %14)
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind optnone
define void @print_usage() #0 !dbg !315 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0)), !dbg !316
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i32 0, i32 0)), !dbg !317
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i32 0, i32 0)), !dbg !318
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i32 0, i32 0)), !dbg !319
  call void @exit(i32 0) #9, !dbg !320
  unreachable, !dbg !320
                                                  ; No predecessors!
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone
define i32 @main(i32, i8**) #0 !dbg !322 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !326, metadata !DIExpression()), !dbg !327
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !328, metadata !DIExpression()), !dbg !329
  %6 = load i32, i32* %4, align 4, !dbg !330
  %7 = icmp slt i32 %6, 2, !dbg !332
  br i1 %7, label %8, label %9, !dbg !333

; <label>:8:                                      ; preds = %2
  call void @print_usage(), !dbg !334
  br label %9, !dbg !336

; <label>:9:                                      ; preds = %8, %2
  %10 = load i8**, i8*** %5, align 8, !dbg !337
  %11 = getelementptr inbounds i8*, i8** %10, i64 1, !dbg !337
  %12 = load i8*, i8** %11, align 8, !dbg !337
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #10, !dbg !339
  %14 = icmp eq i32 %13, 0, !dbg !340
  br i1 %14, label %15, label %16, !dbg !341

; <label>:15:                                     ; preds = %9
  call void @use_after_free1(), !dbg !342
  br label %16, !dbg !344

; <label>:16:                                     ; preds = %15, %9
  %17 = load i8**, i8*** %5, align 8, !dbg !345
  %18 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !345
  %19 = load i8*, i8** %18, align 8, !dbg !345
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0)) #10, !dbg !347
  %21 = icmp eq i32 %20, 0, !dbg !348
  br i1 %21, label %22, label %23, !dbg !349

; <label>:22:                                     ; preds = %16
  call void @double_free(), !dbg !350
  br label %23, !dbg !352

; <label>:23:                                     ; preds = %22, %16
  %24 = load i8**, i8*** %5, align 8, !dbg !353
  %25 = getelementptr inbounds i8*, i8** %24, i64 1, !dbg !353
  %26 = load i8*, i8** %25, align 8, !dbg !353
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0)) #10, !dbg !355
  %28 = icmp eq i32 %27, 0, !dbg !356
  br i1 %28, label %29, label %30, !dbg !357

; <label>:29:                                     ; preds = %23
  call void @invalid_free(), !dbg !358
  br label %30, !dbg !360

; <label>:30:                                     ; preds = %29, %23
  %31 = load i8**, i8*** %5, align 8, !dbg !361
  %32 = getelementptr inbounds i8*, i8** %31, i64 1, !dbg !361
  %33 = load i8*, i8** %32, align 8, !dbg !361
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0)) #10, !dbg !363
  %35 = icmp eq i32 %34, 0, !dbg !364
  br i1 %35, label %36, label %37, !dbg !365

; <label>:36:                                     ; preds = %30
  call void @use_after_free2(), !dbg !366
  br label %37, !dbg !368

; <label>:37:                                     ; preds = %36, %30
  %38 = load i8**, i8*** %5, align 8, !dbg !369
  %39 = getelementptr inbounds i8*, i8** %38, i64 1, !dbg !369
  %40 = load i8*, i8** %39, align 8, !dbg !369
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)) #10, !dbg !371
  %42 = icmp eq i32 %41, 0, !dbg !372
  br i1 %42, label %43, label %44, !dbg !373

; <label>:43:                                     ; preds = %37
  call void @use_after_free3(), !dbg !374
  br label %44, !dbg !376

; <label>:44:                                     ; preds = %43, %37
  %45 = load i8**, i8*** %5, align 8, !dbg !377
  %46 = getelementptr inbounds i8*, i8** %45, i64 1, !dbg !377
  %47 = load i8*, i8** %46, align 8, !dbg !377
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #10, !dbg !379
  %49 = icmp eq i32 %48, 0, !dbg !380
  br i1 %49, label %50, label %51, !dbg !381

; <label>:50:                                     ; preds = %44
  call void @use_after_free4(), !dbg !382
  br label %51, !dbg !384

; <label>:51:                                     ; preds = %50, %44
  %52 = load i8**, i8*** %5, align 8, !dbg !385
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !385
  %54 = load i8*, i8** %53, align 8, !dbg !385
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #10, !dbg !387
  %56 = icmp eq i32 %55, 0, !dbg !388
  br i1 %56, label %57, label %58, !dbg !389

; <label>:57:                                     ; preds = %51
  call void @use_after_free5(), !dbg !390
  br label %58, !dbg !392

; <label>:58:                                     ; preds = %57, %51
  %59 = load i8**, i8*** %5, align 8, !dbg !393
  %60 = getelementptr inbounds i8*, i8** %59, i64 1, !dbg !393
  %61 = load i8*, i8** %60, align 8, !dbg !393
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #10, !dbg !395
  %63 = icmp eq i32 %62, 0, !dbg !396
  br i1 %63, label %64, label %65, !dbg !397

; <label>:64:                                     ; preds = %58
  call void @use_after_free6(), !dbg !398
  br label %65, !dbg !400

; <label>:65:                                     ; preds = %64, %58
  %66 = load i8**, i8*** %5, align 8, !dbg !401
  %67 = getelementptr inbounds i8*, i8** %66, i64 1, !dbg !401
  %68 = load i8*, i8** %67, align 8, !dbg !401
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31.49, i32 0, i32 0)) #10, !dbg !403
  %70 = icmp eq i32 %69, 0, !dbg !404
  br i1 %70, label %71, label %72, !dbg !405

; <label>:71:                                     ; preds = %65
  call void @use_after_free7(), !dbg !406
  br label %72, !dbg !408

; <label>:72:                                     ; preds = %71, %65
  %73 = load i8**, i8*** %5, align 8, !dbg !409
  %74 = getelementptr inbounds i8*, i8** %73, i64 1, !dbg !409
  %75 = load i8*, i8** %74, align 8, !dbg !409
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0)) #10, !dbg !411
  %77 = icmp eq i32 %76, 0, !dbg !412
  br i1 %77, label %78, label %79, !dbg !413

; <label>:78:                                     ; preds = %72
  call void @use_after_free8(), !dbg !414
  br label %79, !dbg !416

; <label>:79:                                     ; preds = %78, %72
  %80 = load i8**, i8*** %5, align 8, !dbg !417
  %81 = getelementptr inbounds i8*, i8** %80, i64 1, !dbg !417
  %82 = load i8*, i8** %81, align 8, !dbg !417
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0)) #10, !dbg !419
  %84 = icmp eq i32 %83, 0, !dbg !420
  br i1 %84, label %85, label %86, !dbg !421

; <label>:85:                                     ; preds = %79
  call void @test_backward(), !dbg !422
  br label %86, !dbg !424

; <label>:86:                                     ; preds = %85, %79
  %87 = load i8**, i8*** %5, align 8, !dbg !425
  %88 = getelementptr inbounds i8*, i8** %87, i64 1, !dbg !425
  %89 = load i8*, i8** %88, align 8, !dbg !425
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0)) #10, !dbg !427
  %91 = icmp eq i32 %90, 0, !dbg !428
  br i1 %91, label %92, label %93, !dbg !429

; <label>:92:                                     ; preds = %86
  call void @test_global(), !dbg !430
  br label %93, !dbg !432

; <label>:93:                                     ; preds = %92, %86
  %94 = load i8**, i8*** %5, align 8, !dbg !433
  %95 = getelementptr inbounds i8*, i8** %94, i64 1, !dbg !433
  %96 = load i8*, i8** %95, align 8, !dbg !433
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0)) #10, !dbg !435
  %98 = icmp eq i32 %97, 0, !dbg !436
  br i1 %98, label %99, label %100, !dbg !437

; <label>:99:                                     ; preds = %93
  call void @test_global1(), !dbg !438
  br label %100, !dbg !440

; <label>:100:                                    ; preds = %99, %93
  %101 = load i8**, i8*** %5, align 8, !dbg !441
  %102 = getelementptr inbounds i8*, i8** %101, i64 1, !dbg !441
  %103 = load i8*, i8** %102, align 8, !dbg !441
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0)) #10, !dbg !443
  %105 = icmp eq i32 %104, 0, !dbg !444
  br i1 %105, label %106, label %107, !dbg !445

; <label>:106:                                    ; preds = %100
  call void @test_stackvariable(), !dbg !446
  br label %107, !dbg !448

; <label>:107:                                    ; preds = %106, %100
  ret i32 0, !dbg !449
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

!llvm.ident = !{!34, !34, !34, !34}
!llvm.module.flags = !{!35, !36, !37}
!llvm.dbg.cu = !{!2}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pg", scope: !2, file: !3, line: 6, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 6.0.0 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !28)
!3 = !DIFile(filename: "toyexample.c", directory: "/pass/Test")
!4 = !{}
!5 = !{!6, !8, !12, !18, !27}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "person", file: !3, line: 9, size: 192, elements: !10)
!10 = !{!11, !14, !16}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !9, file: !3, line: 11, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !9, file: !3, line: 12, baseType: !15, size: 32, offset: 64)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ID", scope: !9, file: !3, line: 13, baseType: !17, size: 64, offset: 128)
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME", file: !3, line: 19, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "name", file: !3, line: 16, size: 128, elements: !21)
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "myname", scope: !20, file: !3, line: 17, baseType: !12, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !20, file: !3, line: 18, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !12}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!28 = !{!0, !29}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "gloab", scope: !2, file: !3, line: 7, type: !31, isLocal: false, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 10)
!34 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{i32 2, !"Dwarf Version", i32 4}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 807}
!39 = !{i32 847}
!40 = !{i32 887}
!41 = !{i32 927}
!42 = distinct !DISubprogram(name: "set_info", scope: !3, file: !3, line: 21, type: !43, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !8, !15, !17}
!45 = !DILocalVariable(name: "p", arg: 1, scope: !42, file: !3, line: 21, type: !8)
!46 = !DILocation(line: 21, column: 30, scope: !42)
!47 = !DILocalVariable(name: "age", arg: 2, scope: !42, file: !3, line: 21, type: !15)
!48 = !DILocation(line: 21, column: 46, scope: !42)
!49 = !DILocalVariable(name: "ID", arg: 3, scope: !42, file: !3, line: 21, type: !17)
!50 = !DILocation(line: 21, column: 65, scope: !42)
!51 = !DILocation(line: 22, column: 11, scope: !42)
!52 = !DILocation(line: 22, column: 2, scope: !42)
!53 = !DILocation(line: 22, column: 5, scope: !42)
!54 = !DILocation(line: 22, column: 9, scope: !42)
!55 = !DILocation(line: 23, column: 9, scope: !42)
!56 = !DILocation(line: 23, column: 2, scope: !42)
!57 = !DILocation(line: 23, column: 5, scope: !42)
!58 = !DILocation(line: 23, column: 7, scope: !42)
!59 = !DILocation(line: 24, column: 1, scope: !42)
!60 = distinct !DISubprogram(name: "malloc_global", scope: !3, file: !3, line: 26, type: !61, isLocal: false, isDefinition: true, scopeLine: 26, isOptimized: false, unit: !2, variables: !4)
!61 = !DISubroutineType(types: !62)
!62 = !{null}
!63 = !DILocation(line: 27, column: 7, scope: !60)
!64 = !DILocation(line: 27, column: 5, scope: !60)
!65 = !DILocation(line: 28, column: 2, scope: !60)
!66 = !DILocation(line: 28, column: 8, scope: !60)
!67 = !DILocation(line: 29, column: 7, scope: !60)
!68 = !DILocation(line: 30, column: 1, scope: !60)
!69 = distinct !DISubprogram(name: "test_global", scope: !3, file: !3, line: 32, type: !61, isLocal: false, isDefinition: true, scopeLine: 32, isOptimized: false, unit: !2, variables: !4)
!70 = !DILocation(line: 33, column: 2, scope: !69)
!71 = !DILocalVariable(name: "xg", scope: !69, file: !3, line: 34, type: !7)
!72 = !DILocation(line: 34, column: 6, scope: !69)
!73 = !DILocation(line: 34, column: 11, scope: !69)
!74 = !DILocation(line: 35, column: 39, scope: !69)
!75 = !DILocation(line: 35, column: 2, scope: !69)
!76 = !DILocation(line: 36, column: 1, scope: !69)
!77 = distinct !DISubprogram(name: "test_global1", scope: !3, file: !3, line: 38, type: !61, isLocal: false, isDefinition: true, scopeLine: 38, isOptimized: false, unit: !2, variables: !4)
!78 = !DILocation(line: 39, column: 5, scope: !77)
!79 = !DILocalVariable(name: "xg", scope: !77, file: !3, line: 40, type: !7)
!80 = !DILocation(line: 40, column: 6, scope: !77)
!81 = !DILocation(line: 40, column: 11, scope: !77)
!82 = !DILocation(line: 41, column: 39, scope: !77)
!83 = !DILocation(line: 41, column: 2, scope: !77)
!84 = !DILocation(line: 42, column: 1, scope: !77)
!85 = distinct !DISubprogram(name: "just_return", scope: !3, file: !3, line: 44, type: !86, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !6}
!88 = !DILocalVariable(name: "p", arg: 1, scope: !85, file: !3, line: 44, type: !6)
!89 = !DILocation(line: 44, column: 23, scope: !85)
!90 = !DILocation(line: 45, column: 2, scope: !85)
!91 = distinct !DISubprogram(name: "print_person", scope: !3, file: !3, line: 48, type: !92, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !8}
!94 = !DILocalVariable(name: "p", arg: 1, scope: !91, file: !3, line: 48, type: !8)
!95 = !DILocation(line: 48, column: 34, scope: !91)
!96 = !DILocation(line: 49, column: 34, scope: !91)
!97 = !DILocation(line: 49, column: 37, scope: !91)
!98 = !DILocation(line: 49, column: 2, scope: !91)
!99 = !DILocation(line: 50, column: 34, scope: !91)
!100 = !DILocation(line: 50, column: 37, scope: !91)
!101 = !DILocation(line: 50, column: 2, scope: !91)
!102 = !DILocation(line: 51, column: 7, scope: !91)
!103 = !DILocation(line: 52, column: 1, scope: !91)
!104 = distinct !DISubprogram(name: "use_after_free1", scope: !3, file: !3, line: 54, type: !61, isLocal: false, isDefinition: true, scopeLine: 54, isOptimized: false, unit: !2, variables: !4)
!105 = !DILocalVariable(name: "p", scope: !104, file: !3, line: 55, type: !8)
!106 = !DILocation(line: 55, column: 17, scope: !104)
!107 = !DILocation(line: 55, column: 21, scope: !104)
!108 = !DILocation(line: 57, column: 11, scope: !104)
!109 = !DILocation(line: 57, column: 2, scope: !104)
!110 = !DILocation(line: 58, column: 15, scope: !104)
!111 = !DILocation(line: 58, column: 2, scope: !104)
!112 = !DILocation(line: 60, column: 2, scope: !104)
!113 = !DILocalVariable(name: "ID", scope: !104, file: !3, line: 61, type: !7)
!114 = !DILocation(line: 61, column: 6, scope: !104)
!115 = !DILocation(line: 61, column: 11, scope: !104)
!116 = !DILocation(line: 61, column: 14, scope: !104)
!117 = !DILocation(line: 62, column: 1, scope: !104)
!118 = distinct !DISubprogram(name: "use_after_free2", scope: !3, file: !3, line: 64, type: !61, isLocal: false, isDefinition: true, scopeLine: 64, isOptimized: false, unit: !2, variables: !4)
!119 = !DILocalVariable(name: "buf1", scope: !118, file: !3, line: 65, type: !12)
!120 = !DILocation(line: 65, column: 8, scope: !118)
!121 = !DILocalVariable(name: "buf2", scope: !118, file: !3, line: 66, type: !12)
!122 = !DILocation(line: 66, column: 11, scope: !118)
!123 = !DILocation(line: 68, column: 10, scope: !118)
!124 = !DILocation(line: 69, column: 27, scope: !118)
!125 = !DILocation(line: 69, column: 5, scope: !118)
!126 = !DILocation(line: 70, column: 10, scope: !118)
!127 = !DILocation(line: 73, column: 10, scope: !118)
!128 = !DILocation(line: 74, column: 29, scope: !118)
!129 = !DILocation(line: 74, column: 5, scope: !118)
!130 = !DILocation(line: 77, column: 12, scope: !118)
!131 = !DILocation(line: 77, column: 5, scope: !118)
!132 = !DILocation(line: 78, column: 26, scope: !118)
!133 = !DILocation(line: 78, column: 25, scope: !118)
!134 = !DILocation(line: 78, column: 5, scope: !118)
!135 = !DILocation(line: 81, column: 5, scope: !118)
!136 = !DILocation(line: 82, column: 13, scope: !118)
!137 = !DILocation(line: 82, column: 5, scope: !118)
!138 = !DILocation(line: 83, column: 27, scope: !118)
!139 = !DILocation(line: 83, column: 5, scope: !118)
!140 = !DILocation(line: 85, column: 10, scope: !118)
!141 = !DILocation(line: 86, column: 2, scope: !118)
!142 = distinct !DISubprogram(name: "myprint", scope: !3, file: !3, line: 88, type: !25, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!143 = !DILocalVariable(name: "str", arg: 1, scope: !142, file: !3, line: 88, type: !12)
!144 = !DILocation(line: 88, column: 20, scope: !142)
!145 = !DILocation(line: 88, column: 42, scope: !142)
!146 = !DILocation(line: 88, column: 27, scope: !142)
!147 = !DILocation(line: 88, column: 48, scope: !142)
!148 = distinct !DISubprogram(name: "printmyname", scope: !3, file: !3, line: 89, type: !61, isLocal: false, isDefinition: true, scopeLine: 89, isOptimized: false, unit: !2, variables: !4)
!149 = !DILocation(line: 89, column: 22, scope: !148)
!150 = !DILocation(line: 89, column: 54, scope: !148)
!151 = distinct !DISubprogram(name: "use_after_free3", scope: !3, file: !3, line: 91, type: !61, isLocal: false, isDefinition: true, scopeLine: 91, isOptimized: false, unit: !2, variables: !4)
!152 = !DILocalVariable(name: "a", scope: !151, file: !3, line: 92, type: !18)
!153 = !DILocation(line: 92, column: 8, scope: !151)
!154 = !DILocation(line: 93, column: 6, scope: !151)
!155 = !DILocation(line: 93, column: 4, scope: !151)
!156 = !DILocation(line: 94, column: 2, scope: !151)
!157 = !DILocation(line: 94, column: 5, scope: !151)
!158 = !DILocation(line: 94, column: 10, scope: !151)
!159 = !DILocation(line: 95, column: 2, scope: !151)
!160 = !DILocation(line: 95, column: 5, scope: !151)
!161 = !DILocation(line: 95, column: 12, scope: !151)
!162 = !DILocation(line: 96, column: 2, scope: !151)
!163 = !DILocation(line: 96, column: 5, scope: !151)
!164 = !DILocation(line: 98, column: 7, scope: !151)
!165 = !DILocation(line: 99, column: 2, scope: !151)
!166 = !DILocation(line: 99, column: 5, scope: !151)
!167 = !DILocation(line: 101, column: 2, scope: !151)
!168 = !DILocation(line: 101, column: 5, scope: !151)
!169 = !DILocation(line: 101, column: 10, scope: !151)
!170 = !DILocation(line: 102, column: 2, scope: !151)
!171 = !DILocation(line: 102, column: 5, scope: !151)
!172 = !DILocation(line: 104, column: 4, scope: !151)
!173 = !DILocation(line: 105, column: 2, scope: !151)
!174 = !DILocation(line: 106, column: 2, scope: !151)
!175 = !DILocation(line: 106, column: 5, scope: !151)
!176 = !DILocation(line: 107, column: 1, scope: !151)
!177 = distinct !DISubprogram(name: "use_after_free4", scope: !3, file: !3, line: 109, type: !61, isLocal: false, isDefinition: true, scopeLine: 109, isOptimized: false, unit: !2, variables: !4)
!178 = !DILocalVariable(name: "p", scope: !177, file: !3, line: 110, type: !27)
!179 = !DILocation(line: 110, column: 8, scope: !177)
!180 = !DILocation(line: 110, column: 12, scope: !177)
!181 = !DILocation(line: 112, column: 9, scope: !177)
!182 = !DILocation(line: 112, column: 2, scope: !177)
!183 = !DILocation(line: 112, column: 7, scope: !177)
!184 = !DILocation(line: 113, column: 9, scope: !177)
!185 = !DILocation(line: 113, column: 2, scope: !177)
!186 = !DILocation(line: 113, column: 7, scope: !177)
!187 = !DILocation(line: 114, column: 9, scope: !177)
!188 = !DILocation(line: 114, column: 2, scope: !177)
!189 = !DILocation(line: 114, column: 7, scope: !177)
!190 = !DILocation(line: 116, column: 9, scope: !177)
!191 = !DILocation(line: 116, column: 2, scope: !177)
!192 = !DILocation(line: 117, column: 2, scope: !177)
!193 = !DILocation(line: 117, column: 10, scope: !177)
!194 = !DILocation(line: 118, column: 7, scope: !177)
!195 = !DILocalVariable(name: "ID", scope: !177, file: !3, line: 120, type: !7)
!196 = !DILocation(line: 120, column: 6, scope: !177)
!197 = !DILocation(line: 120, column: 11, scope: !177)
!198 = !DILocation(line: 121, column: 27, scope: !177)
!199 = !DILocation(line: 121, column: 2, scope: !177)
!200 = !DILocation(line: 123, column: 7, scope: !177)
!201 = !DILocation(line: 124, column: 7, scope: !177)
!202 = !DILocation(line: 125, column: 7, scope: !177)
!203 = !DILocation(line: 127, column: 1, scope: !177)
!204 = distinct !DISubprogram(name: "use_after_free5", scope: !3, file: !3, line: 129, type: !61, isLocal: false, isDefinition: true, scopeLine: 129, isOptimized: false, unit: !2, variables: !4)
!205 = !DILocalVariable(name: "p", scope: !204, file: !3, line: 130, type: !8)
!206 = !DILocation(line: 130, column: 17, scope: !204)
!207 = !DILocation(line: 130, column: 21, scope: !204)
!208 = !DILocalVariable(name: "p1", scope: !204, file: !3, line: 131, type: !8)
!209 = !DILocation(line: 131, column: 17, scope: !204)
!210 = !DILocation(line: 131, column: 25, scope: !204)
!211 = !DILocation(line: 133, column: 11, scope: !204)
!212 = !DILocation(line: 133, column: 2, scope: !204)
!213 = !DILocation(line: 134, column: 15, scope: !204)
!214 = !DILocation(line: 134, column: 2, scope: !204)
!215 = !DILocation(line: 136, column: 2, scope: !204)
!216 = !DILocalVariable(name: "ID", scope: !204, file: !3, line: 137, type: !7)
!217 = !DILocation(line: 137, column: 6, scope: !204)
!218 = !DILocation(line: 137, column: 11, scope: !204)
!219 = !DILocation(line: 137, column: 15, scope: !204)
!220 = !DILocation(line: 138, column: 1, scope: !204)
!221 = distinct !DISubprogram(name: "use_after_free6", scope: !3, file: !3, line: 140, type: !61, isLocal: false, isDefinition: true, scopeLine: 140, isOptimized: false, unit: !2, variables: !4)
!222 = !DILocalVariable(name: "p", scope: !221, file: !3, line: 141, type: !8)
!223 = !DILocation(line: 141, column: 17, scope: !221)
!224 = !DILocation(line: 141, column: 21, scope: !221)
!225 = !DILocation(line: 143, column: 11, scope: !221)
!226 = !DILocation(line: 143, column: 2, scope: !221)
!227 = !DILocation(line: 144, column: 15, scope: !221)
!228 = !DILocation(line: 144, column: 2, scope: !221)
!229 = !DILocation(line: 146, column: 2, scope: !221)
!230 = !DILocalVariable(name: "q", scope: !221, file: !3, line: 147, type: !8)
!231 = !DILocation(line: 147, column: 17, scope: !221)
!232 = !DILocation(line: 147, column: 21, scope: !221)
!233 = !DILocalVariable(name: "ID", scope: !221, file: !3, line: 148, type: !7)
!234 = !DILocation(line: 148, column: 6, scope: !221)
!235 = !DILocation(line: 148, column: 11, scope: !221)
!236 = !DILocation(line: 148, column: 14, scope: !221)
!237 = !DILocation(line: 149, column: 1, scope: !221)
!238 = distinct !DISubprogram(name: "use_after_free7", scope: !3, file: !3, line: 151, type: !61, isLocal: false, isDefinition: true, scopeLine: 151, isOptimized: false, unit: !2, variables: !4)
!239 = !DILocalVariable(name: "p", scope: !238, file: !3, line: 152, type: !8)
!240 = !DILocation(line: 152, column: 17, scope: !238)
!241 = !DILocation(line: 152, column: 21, scope: !238)
!242 = !DILocalVariable(name: "q", scope: !238, file: !3, line: 153, type: !8)
!243 = !DILocation(line: 153, column: 17, scope: !238)
!244 = !DILocation(line: 153, column: 21, scope: !238)
!245 = !DILocation(line: 155, column: 11, scope: !238)
!246 = !DILocation(line: 155, column: 2, scope: !238)
!247 = !DILocation(line: 156, column: 15, scope: !238)
!248 = !DILocation(line: 156, column: 2, scope: !238)
!249 = !DILocation(line: 158, column: 2, scope: !238)
!250 = !DILocalVariable(name: "ID", scope: !238, file: !3, line: 159, type: !7)
!251 = !DILocation(line: 159, column: 6, scope: !238)
!252 = !DILocation(line: 159, column: 11, scope: !238)
!253 = !DILocation(line: 159, column: 14, scope: !238)
!254 = !DILocation(line: 160, column: 1, scope: !238)
!255 = distinct !DISubprogram(name: "use_after_free8", scope: !3, file: !3, line: 162, type: !61, isLocal: false, isDefinition: true, scopeLine: 162, isOptimized: false, unit: !2, variables: !4)
!256 = !DILocalVariable(name: "p", scope: !255, file: !3, line: 163, type: !6)
!257 = !DILocation(line: 163, column: 7, scope: !255)
!258 = !DILocation(line: 163, column: 11, scope: !255)
!259 = !DILocation(line: 164, column: 2, scope: !255)
!260 = !DILocation(line: 164, column: 7, scope: !255)
!261 = !DILocation(line: 165, column: 7, scope: !255)
!262 = !DILocation(line: 166, column: 14, scope: !255)
!263 = !DILocation(line: 166, column: 16, scope: !255)
!264 = !DILocation(line: 166, column: 2, scope: !255)
!265 = !DILocation(line: 168, column: 2, scope: !255)
!266 = distinct !DISubprogram(name: "test_backward", scope: !3, file: !3, line: 171, type: !61, isLocal: false, isDefinition: true, scopeLine: 171, isOptimized: false, unit: !2, variables: !4)
!267 = !DILocalVariable(name: "p", scope: !266, file: !3, line: 172, type: !6)
!268 = !DILocation(line: 172, column: 7, scope: !266)
!269 = !DILocation(line: 172, column: 11, scope: !266)
!270 = !DILocation(line: 173, column: 2, scope: !266)
!271 = !DILocation(line: 173, column: 9, scope: !266)
!272 = !DILocation(line: 174, column: 14, scope: !266)
!273 = !DILocation(line: 174, column: 2, scope: !266)
!274 = !DILocalVariable(name: "x", scope: !266, file: !3, line: 175, type: !7)
!275 = !DILocation(line: 175, column: 6, scope: !266)
!276 = !DILocation(line: 175, column: 10, scope: !266)
!277 = !DILocation(line: 177, column: 7, scope: !266)
!278 = !DILocation(line: 178, column: 1, scope: !266)
!279 = distinct !DISubprogram(name: "test_stackvariable", scope: !3, file: !3, line: 180, type: !61, isLocal: false, isDefinition: true, scopeLine: 180, isOptimized: false, unit: !2, variables: !4)
!280 = !DILocalVariable(name: "pp", scope: !279, file: !3, line: 181, type: !6)
!281 = !DILocation(line: 181, column: 7, scope: !279)
!282 = !DILocalVariable(name: "p", scope: !279, file: !3, line: 182, type: !7)
!283 = !DILocation(line: 182, column: 6, scope: !279)
!284 = !DILocation(line: 183, column: 5, scope: !279)
!285 = !DILocation(line: 184, column: 14, scope: !279)
!286 = !DILocation(line: 184, column: 2, scope: !279)
!287 = !DILocalVariable(name: "x", scope: !279, file: !3, line: 185, type: !7)
!288 = !DILocation(line: 185, column: 6, scope: !279)
!289 = !DILocation(line: 185, column: 11, scope: !279)
!290 = !DILocation(line: 185, column: 10, scope: !279)
!291 = !DILocation(line: 187, column: 2, scope: !279)
!292 = distinct !DISubprogram(name: "double_free", scope: !3, file: !3, line: 190, type: !61, isLocal: false, isDefinition: true, scopeLine: 190, isOptimized: false, unit: !2, variables: !4)
!293 = !DILocalVariable(name: "p", scope: !292, file: !3, line: 192, type: !8)
!294 = !DILocation(line: 192, column: 17, scope: !292)
!295 = !DILocation(line: 192, column: 21, scope: !292)
!296 = !DILocation(line: 194, column: 11, scope: !292)
!297 = !DILocation(line: 194, column: 2, scope: !292)
!298 = !DILocation(line: 195, column: 15, scope: !292)
!299 = !DILocation(line: 195, column: 2, scope: !292)
!300 = !DILocation(line: 197, column: 2, scope: !292)
!301 = !DILocation(line: 198, column: 7, scope: !292)
!302 = !DILocation(line: 200, column: 1, scope: !292)
!303 = distinct !DISubprogram(name: "invalid_free", scope: !3, file: !3, line: 202, type: !61, isLocal: false, isDefinition: true, scopeLine: 202, isOptimized: false, unit: !2, variables: !4)
!304 = !DILocalVariable(name: "p", scope: !303, file: !3, line: 204, type: !8)
!305 = !DILocation(line: 204, column: 17, scope: !303)
!306 = !DILocation(line: 204, column: 21, scope: !303)
!307 = !DILocation(line: 206, column: 11, scope: !303)
!308 = !DILocation(line: 206, column: 2, scope: !303)
!309 = !DILocation(line: 207, column: 6, scope: !303)
!310 = !DILocation(line: 207, column: 8, scope: !303)
!311 = !DILocation(line: 207, column: 4, scope: !303)
!312 = !DILocation(line: 209, column: 2, scope: !303)
!313 = !DILocation(line: 210, column: 7, scope: !303)
!314 = !DILocation(line: 212, column: 1, scope: !303)
!315 = distinct !DISubprogram(name: "print_usage", scope: !3, file: !3, line: 214, type: !61, isLocal: false, isDefinition: true, scopeLine: 214, isOptimized: false, unit: !2, variables: !4)
!316 = !DILocation(line: 215, column: 2, scope: !315)
!317 = !DILocation(line: 216, column: 2, scope: !315)
!318 = !DILocation(line: 217, column: 2, scope: !315)
!319 = !DILocation(line: 218, column: 2, scope: !315)
!320 = !DILocation(line: 219, column: 2, scope: !315)
!321 = !DILocation(line: 220, column: 1, scope: !315)
!322 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 222, type: !323, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!323 = !DISubroutineType(types: !324)
!324 = !{!7, !7, !325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!326 = !DILocalVariable(name: "argc", arg: 1, scope: !322, file: !3, line: 222, type: !7)
!327 = !DILocation(line: 222, column: 15, scope: !322)
!328 = !DILocalVariable(name: "argv", arg: 2, scope: !322, file: !3, line: 222, type: !325)
!329 = !DILocation(line: 222, column: 27, scope: !322)
!330 = !DILocation(line: 225, column: 5, scope: !331)
!331 = distinct !DILexicalBlock(scope: !322, file: !3, line: 225, column: 5)
!332 = !DILocation(line: 225, column: 10, scope: !331)
!333 = !DILocation(line: 225, column: 5, scope: !322)
!334 = !DILocation(line: 226, column: 3, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !3, line: 225, column: 15)
!336 = !DILocation(line: 227, column: 2, scope: !335)
!337 = !DILocation(line: 229, column: 14, scope: !338)
!338 = distinct !DILexicalBlock(scope: !322, file: !3, line: 229, column: 6)
!339 = !DILocation(line: 229, column: 6, scope: !338)
!340 = !DILocation(line: 229, column: 31, scope: !338)
!341 = !DILocation(line: 229, column: 6, scope: !322)
!342 = !DILocation(line: 230, column: 3, scope: !343)
!343 = distinct !DILexicalBlock(scope: !338, file: !3, line: 229, column: 37)
!344 = !DILocation(line: 231, column: 2, scope: !343)
!345 = !DILocation(line: 233, column: 14, scope: !346)
!346 = distinct !DILexicalBlock(scope: !322, file: !3, line: 233, column: 6)
!347 = !DILocation(line: 233, column: 6, scope: !346)
!348 = !DILocation(line: 233, column: 29, scope: !346)
!349 = !DILocation(line: 233, column: 6, scope: !322)
!350 = !DILocation(line: 234, column: 3, scope: !351)
!351 = distinct !DILexicalBlock(scope: !346, file: !3, line: 233, column: 35)
!352 = !DILocation(line: 235, column: 2, scope: !351)
!353 = !DILocation(line: 237, column: 14, scope: !354)
!354 = distinct !DILexicalBlock(scope: !322, file: !3, line: 237, column: 6)
!355 = !DILocation(line: 237, column: 6, scope: !354)
!356 = !DILocation(line: 237, column: 29, scope: !354)
!357 = !DILocation(line: 237, column: 6, scope: !322)
!358 = !DILocation(line: 238, column: 3, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !3, line: 237, column: 35)
!360 = !DILocation(line: 239, column: 2, scope: !359)
!361 = !DILocation(line: 241, column: 14, scope: !362)
!362 = distinct !DILexicalBlock(scope: !322, file: !3, line: 241, column: 6)
!363 = !DILocation(line: 241, column: 6, scope: !362)
!364 = !DILocation(line: 241, column: 31, scope: !362)
!365 = !DILocation(line: 241, column: 6, scope: !322)
!366 = !DILocation(line: 242, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !362, file: !3, line: 241, column: 37)
!368 = !DILocation(line: 243, column: 2, scope: !367)
!369 = !DILocation(line: 245, column: 14, scope: !370)
!370 = distinct !DILexicalBlock(scope: !322, file: !3, line: 245, column: 6)
!371 = !DILocation(line: 245, column: 6, scope: !370)
!372 = !DILocation(line: 245, column: 31, scope: !370)
!373 = !DILocation(line: 245, column: 6, scope: !322)
!374 = !DILocation(line: 246, column: 3, scope: !375)
!375 = distinct !DILexicalBlock(scope: !370, file: !3, line: 245, column: 37)
!376 = !DILocation(line: 247, column: 2, scope: !375)
!377 = !DILocation(line: 249, column: 14, scope: !378)
!378 = distinct !DILexicalBlock(scope: !322, file: !3, line: 249, column: 6)
!379 = !DILocation(line: 249, column: 6, scope: !378)
!380 = !DILocation(line: 249, column: 31, scope: !378)
!381 = !DILocation(line: 249, column: 6, scope: !322)
!382 = !DILocation(line: 250, column: 3, scope: !383)
!383 = distinct !DILexicalBlock(scope: !378, file: !3, line: 249, column: 37)
!384 = !DILocation(line: 251, column: 2, scope: !383)
!385 = !DILocation(line: 253, column: 14, scope: !386)
!386 = distinct !DILexicalBlock(scope: !322, file: !3, line: 253, column: 6)
!387 = !DILocation(line: 253, column: 6, scope: !386)
!388 = !DILocation(line: 253, column: 31, scope: !386)
!389 = !DILocation(line: 253, column: 6, scope: !322)
!390 = !DILocation(line: 254, column: 3, scope: !391)
!391 = distinct !DILexicalBlock(scope: !386, file: !3, line: 253, column: 37)
!392 = !DILocation(line: 255, column: 2, scope: !391)
!393 = !DILocation(line: 257, column: 14, scope: !394)
!394 = distinct !DILexicalBlock(scope: !322, file: !3, line: 257, column: 6)
!395 = !DILocation(line: 257, column: 6, scope: !394)
!396 = !DILocation(line: 257, column: 31, scope: !394)
!397 = !DILocation(line: 257, column: 6, scope: !322)
!398 = !DILocation(line: 258, column: 3, scope: !399)
!399 = distinct !DILexicalBlock(scope: !394, file: !3, line: 257, column: 37)
!400 = !DILocation(line: 259, column: 2, scope: !399)
!401 = !DILocation(line: 261, column: 14, scope: !402)
!402 = distinct !DILexicalBlock(scope: !322, file: !3, line: 261, column: 6)
!403 = !DILocation(line: 261, column: 6, scope: !402)
!404 = !DILocation(line: 261, column: 31, scope: !402)
!405 = !DILocation(line: 261, column: 6, scope: !322)
!406 = !DILocation(line: 262, column: 3, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !3, line: 261, column: 37)
!408 = !DILocation(line: 263, column: 2, scope: !407)
!409 = !DILocation(line: 265, column: 14, scope: !410)
!410 = distinct !DILexicalBlock(scope: !322, file: !3, line: 265, column: 6)
!411 = !DILocation(line: 265, column: 6, scope: !410)
!412 = !DILocation(line: 265, column: 31, scope: !410)
!413 = !DILocation(line: 265, column: 6, scope: !322)
!414 = !DILocation(line: 266, column: 3, scope: !415)
!415 = distinct !DILexicalBlock(scope: !410, file: !3, line: 265, column: 37)
!416 = !DILocation(line: 267, column: 2, scope: !415)
!417 = !DILocation(line: 269, column: 14, scope: !418)
!418 = distinct !DILexicalBlock(scope: !322, file: !3, line: 269, column: 6)
!419 = !DILocation(line: 269, column: 6, scope: !418)
!420 = !DILocation(line: 269, column: 29, scope: !418)
!421 = !DILocation(line: 269, column: 6, scope: !322)
!422 = !DILocation(line: 270, column: 3, scope: !423)
!423 = distinct !DILexicalBlock(scope: !418, file: !3, line: 269, column: 35)
!424 = !DILocation(line: 271, column: 2, scope: !423)
!425 = !DILocation(line: 273, column: 14, scope: !426)
!426 = distinct !DILexicalBlock(scope: !322, file: !3, line: 273, column: 6)
!427 = !DILocation(line: 273, column: 6, scope: !426)
!428 = !DILocation(line: 273, column: 30, scope: !426)
!429 = !DILocation(line: 273, column: 6, scope: !322)
!430 = !DILocation(line: 274, column: 3, scope: !431)
!431 = distinct !DILexicalBlock(scope: !426, file: !3, line: 273, column: 36)
!432 = !DILocation(line: 275, column: 2, scope: !431)
!433 = !DILocation(line: 277, column: 14, scope: !434)
!434 = distinct !DILexicalBlock(scope: !322, file: !3, line: 277, column: 6)
!435 = !DILocation(line: 277, column: 6, scope: !434)
!436 = !DILocation(line: 277, column: 31, scope: !434)
!437 = !DILocation(line: 277, column: 6, scope: !322)
!438 = !DILocation(line: 278, column: 3, scope: !439)
!439 = distinct !DILexicalBlock(scope: !434, file: !3, line: 277, column: 37)
!440 = !DILocation(line: 279, column: 2, scope: !439)
!441 = !DILocation(line: 281, column: 14, scope: !442)
!442 = distinct !DILexicalBlock(scope: !322, file: !3, line: 281, column: 6)
!443 = !DILocation(line: 281, column: 6, scope: !442)
!444 = !DILocation(line: 281, column: 30, scope: !442)
!445 = !DILocation(line: 281, column: 6, scope: !322)
!446 = !DILocation(line: 282, column: 3, scope: !447)
!447 = distinct !DILexicalBlock(scope: !442, file: !3, line: 281, column: 36)
!448 = !DILocation(line: 283, column: 2, scope: !447)
!449 = !DILocation(line: 285, column: 2, scope: !322)
