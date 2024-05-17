; ModuleID = 'kernel.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-linux-gnu"

declare void @memrefCopy(i64, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #0

define void @add_kernel(i64 %0, ptr nocapture readonly %1, i64 %2, ptr nocapture readonly %3, i64 %4, ptr nocapture readonly %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) local_unnamed_addr {
  %14 = shl i32 %10, 6
  %15 = sext i32 %14 to i64
  %16 = load ptr, ptr %1, align 8
  %17 = getelementptr i8, ptr %1, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = add nsw i64 %15, 64
  %20 = sext i32 %6 to i64
  %21 = tail call i64 @llvm.smin.i64(i64 %19, i64 %20)
  %22 = sub nsw i64 %21, %15
  %23 = tail call dereferenceable_or_null(256) ptr @malloc(i64 256)
  %24 = tail call ptr @llvm.stacksave.p0()
  %25 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  store ptr %16, ptr %25, align 8
  %.fca.1.gep40 = getelementptr inbounds i8, ptr %25, i64 8
  store ptr %18, ptr %.fca.1.gep40, align 8
  %.fca.2.gep42 = getelementptr inbounds i8, ptr %25, i64 16
  store i64 %15, ptr %.fca.2.gep42, align 8
  %.fca.3.0.gep44 = getelementptr inbounds i8, ptr %25, i64 24
  store i64 %22, ptr %.fca.3.0.gep44, align 8
  %.fca.4.0.gep46 = getelementptr inbounds i8, ptr %25, i64 32
  store i64 1, ptr %.fca.4.0.gep46, align 8
  %26 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  store ptr %23, ptr %26, align 8
  %.fca.1.gep30 = getelementptr inbounds i8, ptr %26, i64 8
  store ptr %23, ptr %.fca.1.gep30, align 8
  %.fca.2.gep32 = getelementptr inbounds i8, ptr %26, i64 16
  store i64 0, ptr %.fca.2.gep32, align 8
  %.fca.3.0.gep34 = getelementptr inbounds i8, ptr %26, i64 24
  store i64 %22, ptr %.fca.3.0.gep34, align 8
  %.fca.4.0.gep36 = getelementptr inbounds i8, ptr %26, i64 32
  store i64 1, ptr %.fca.4.0.gep36, align 8
  %27 = alloca { i64, ptr }, align 8
  store i64 1, ptr %27, align 8
  %.fca.1.gep26 = getelementptr inbounds i8, ptr %27, i64 8
  store ptr %25, ptr %.fca.1.gep26, align 8
  %28 = alloca { i64, ptr }, align 8
  store i64 1, ptr %28, align 8
  %.fca.1.gep22 = getelementptr inbounds i8, ptr %28, i64 8
  store ptr %26, ptr %.fca.1.gep22, align 8
  call void @memrefCopy(i64 4, ptr nonnull %27, ptr nonnull %28)
  call void @llvm.stackrestore.p0(ptr %24)
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr i8, ptr %3, i64 8
  %31 = load ptr, ptr %30, align 8
  %32 = call dereferenceable_or_null(256) ptr @malloc(i64 256)
  %33 = call ptr @llvm.stacksave.p0()
  %34 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  store ptr %29, ptr %34, align 8
  %.fca.1.gep12 = getelementptr inbounds i8, ptr %34, i64 8
  store ptr %31, ptr %.fca.1.gep12, align 8
  %.fca.2.gep14 = getelementptr inbounds i8, ptr %34, i64 16
  store i64 %15, ptr %.fca.2.gep14, align 8
  %.fca.3.0.gep16 = getelementptr inbounds i8, ptr %34, i64 24
  store i64 %22, ptr %.fca.3.0.gep16, align 8
  %.fca.4.0.gep18 = getelementptr inbounds i8, ptr %34, i64 32
  store i64 1, ptr %.fca.4.0.gep18, align 8
  %35 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  store ptr %32, ptr %35, align 8
  %.fca.1.gep8 = getelementptr inbounds i8, ptr %35, i64 8
  store ptr %32, ptr %.fca.1.gep8, align 8
  %.fca.2.gep = getelementptr inbounds i8, ptr %35, i64 16
  store i64 0, ptr %.fca.2.gep, align 8
  %.fca.3.0.gep = getelementptr inbounds i8, ptr %35, i64 24
  store i64 %22, ptr %.fca.3.0.gep, align 8
  %.fca.4.0.gep = getelementptr inbounds i8, ptr %35, i64 32
  store i64 1, ptr %.fca.4.0.gep, align 8
  %36 = alloca { i64, ptr }, align 8
  store i64 1, ptr %36, align 8
  %.fca.1.gep4 = getelementptr inbounds i8, ptr %36, i64 8
  store ptr %34, ptr %.fca.1.gep4, align 8
  %37 = alloca { i64, ptr }, align 8
  store i64 1, ptr %37, align 8
  %.fca.1.gep = getelementptr inbounds i8, ptr %37, i64 8
  store ptr %35, ptr %.fca.1.gep, align 8
  call void @memrefCopy(i64 4, ptr nonnull %36, ptr nonnull %37)
  call void @llvm.stackrestore.p0(ptr %33)
  br label %38

38:                                               ; preds = %13, %38
  %39 = phi i64 [ 0, %13 ], [ %45, %38 ]
  %40 = getelementptr float, ptr %23, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = getelementptr float, ptr %32, i64 %39
  %43 = load float, ptr %42, align 4
  %44 = fadd float %41, %43
  store float %44, ptr %40, align 4
  %45 = add nuw nsw i64 %39, 1
  %exitcond.not = icmp eq i64 %45, 64
  br i1 %exitcond.not, label %46, label %38

46:                                               ; preds = %38
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr i8, ptr %5, i64 8
  %49 = load ptr, ptr %48, align 8
  %50 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  store ptr %23, ptr %50, align 8
  %.repack47 = getelementptr inbounds i8, ptr %50, i64 8
  store ptr %23, ptr %.repack47, align 8
  %.repack49 = getelementptr inbounds i8, ptr %50, i64 16
  store i64 0, ptr %.repack49, align 8
  %.repack51 = getelementptr inbounds i8, ptr %50, i64 24
  store i64 %22, ptr %.repack51, align 8
  %.repack53 = getelementptr inbounds i8, ptr %50, i64 32
  store i64 1, ptr %.repack53, align 8
  %51 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, align 8
  store ptr %47, ptr %51, align 8
  %.repack55 = getelementptr inbounds i8, ptr %51, i64 8
  store ptr %49, ptr %.repack55, align 8
  %.repack57 = getelementptr inbounds i8, ptr %51, i64 16
  store i64 %15, ptr %.repack57, align 8
  %.repack59 = getelementptr inbounds i8, ptr %51, i64 24
  store i64 %22, ptr %.repack59, align 8
  %.repack61 = getelementptr inbounds i8, ptr %51, i64 32
  store i64 1, ptr %.repack61, align 8
  %52 = alloca { i64, ptr }, align 8
  store i64 1, ptr %52, align 8
  %.repack63 = getelementptr inbounds i8, ptr %52, i64 8
  store ptr %50, ptr %.repack63, align 8
  %53 = alloca { i64, ptr }, align 8
  store i64 1, ptr %53, align 8
  %.repack65 = getelementptr inbounds i8, ptr %53, i64 8
  store ptr %51, ptr %.repack65, align 8
  call void @memrefCopy(i64 4, ptr nonnull %52, ptr nonnull %53)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

attributes #0 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
