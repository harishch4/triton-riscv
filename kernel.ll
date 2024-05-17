; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @malloc(i64)

define void @add_kernel(i64 %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) {
  %14 = insertvalue { i64, ptr } undef, i64 %4, 0
  %15 = insertvalue { i64, ptr } %14, ptr %5, 1
  %16 = insertvalue { i64, ptr } undef, i64 %2, 0
  %17 = insertvalue { i64, ptr } %16, ptr %3, 1
  %18 = insertvalue { i64, ptr } undef, i64 %0, 0
  %19 = insertvalue { i64, ptr } %18, ptr %1, 1
  %20 = mul i32 %10, 64
  %21 = sext i32 %20 to i64
  %22 = load ptr, ptr %1, align 8
  %23 = getelementptr ptr, ptr %1, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %22, 0
  %26 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %25, ptr %24, 1
  %27 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %26, i64 %21, 2
  %28 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %27, i64 64, 3, 0
  %29 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %28, i64 1, 4, 0
  %30 = add i64 %21, 64
  %31 = sext i32 %6 to i64
  %32 = call i64 @llvm.smin.i64(i64 %30, i64 %31)
  %33 = sub i64 %32, %21
  %34 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 64) to i64))
  %35 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %34, 0
  %36 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %35, ptr %34, 1
  %37 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %36, i64 0, 2
  %38 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %37, i64 64, 3, 0
  %39 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, i64 1, 4, 0
  %40 = insertvalue { ptr, ptr, i64 } undef, ptr %22, 0
  %41 = insertvalue { ptr, ptr, i64 } %40, ptr %24, 1
  %42 = insertvalue { ptr, ptr, i64 } %41, i64 0, 2
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %22, 0
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, ptr %24, 1
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, i64 %21, 2
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, i64 %33, 3, 0
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, i64 1, 4, 0
  %48 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %34, 0
  %49 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, ptr %34, 1
  %50 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %49, i64 0, 2
  %51 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, i64 %33, 3, 0
  %52 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %51, i64 1, 4, 0
  %53 = call ptr @llvm.stacksave.p0()
  %54 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, ptr %54, align 8
  %55 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %54, 1
  %56 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, ptr %56, align 8
  %57 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %56, 1
  %58 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %55, ptr %58, align 8
  %59 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %57, ptr %59, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %58, ptr %59)
  call void @llvm.stackrestore.p0(ptr %53)
  %60 = load ptr, ptr %3, align 8
  %61 = getelementptr ptr, ptr %3, i32 1
  %62 = load ptr, ptr %61, align 8
  %63 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %60, 0
  %64 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %63, ptr %62, 1
  %65 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %64, i64 %21, 2
  %66 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %65, i64 64, 3, 0
  %67 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %66, i64 1, 4, 0
  %68 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 64) to i64))
  %69 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %68, 0
  %70 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, ptr %68, 1
  %71 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %70, i64 0, 2
  %72 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %71, i64 64, 3, 0
  %73 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %72, i64 1, 4, 0
  %74 = insertvalue { ptr, ptr, i64 } undef, ptr %60, 0
  %75 = insertvalue { ptr, ptr, i64 } %74, ptr %62, 1
  %76 = insertvalue { ptr, ptr, i64 } %75, i64 0, 2
  %77 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %60, 0
  %78 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %77, ptr %62, 1
  %79 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %78, i64 %21, 2
  %80 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %79, i64 %33, 3, 0
  %81 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %80, i64 1, 4, 0
  %82 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %68, 0
  %83 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %82, ptr %68, 1
  %84 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %83, i64 0, 2
  %85 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %84, i64 %33, 3, 0
  %86 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %85, i64 1, 4, 0
  %87 = call ptr @llvm.stacksave.p0()
  %88 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %81, ptr %88, align 8
  %89 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %88, 1
  %90 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %86, ptr %90, align 8
  %91 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %90, 1
  %92 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %89, ptr %92, align 8
  %93 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %91, ptr %93, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %92, ptr %93)
  call void @llvm.stackrestore.p0(ptr %87)
  br label %94

94:                                               ; preds = %97, %13
  %95 = phi i64 [ %104, %97 ], [ 0, %13 ]
  %96 = icmp slt i64 %95, 64
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = getelementptr float, ptr %34, i64 %95
  %99 = load float, ptr %98, align 4
  %100 = getelementptr float, ptr %68, i64 %95
  %101 = load float, ptr %100, align 4
  %102 = fadd float %99, %101
  %103 = getelementptr float, ptr %34, i64 %95
  store float %102, ptr %103, align 4
  %104 = add i64 %95, 1
  br label %94

105:                                              ; preds = %94
  %106 = load ptr, ptr %5, align 8
  %107 = getelementptr ptr, ptr %5, i32 1
  %108 = load ptr, ptr %107, align 8
  %109 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %106, 0
  %110 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %109, ptr %108, 1
  %111 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %110, i64 %21, 2
  %112 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %111, i64 64, 3, 0
  %113 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %112, i64 1, 4, 0
  %114 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %34, 0
  %115 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %114, ptr %34, 1
  %116 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %115, i64 0, 2
  %117 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %116, i64 %33, 3, 0
  %118 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %117, i64 1, 4, 0
  %119 = insertvalue { ptr, ptr, i64 } undef, ptr %106, 0
  %120 = insertvalue { ptr, ptr, i64 } %119, ptr %108, 1
  %121 = insertvalue { ptr, ptr, i64 } %120, i64 0, 2
  %122 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %106, 0
  %123 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %122, ptr %108, 1
  %124 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %123, i64 %21, 2
  %125 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %124, i64 %33, 3, 0
  %126 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %125, i64 1, 4, 0
  %127 = call ptr @llvm.stacksave.p0()
  %128 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %118, ptr %128, align 8
  %129 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %128, 1
  %130 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %126, ptr %130, align 8
  %131 = insertvalue { i64, ptr } { i64 1, ptr undef }, ptr %130, 1
  %132 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %129, ptr %132, align 8
  %133 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %131, ptr %133, align 8
  call void @memrefCopy(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 1) to i64), ptr %132, ptr %133)
  call void @llvm.stackrestore.p0(ptr %127)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}