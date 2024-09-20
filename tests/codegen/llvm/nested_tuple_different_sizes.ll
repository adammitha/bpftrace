; ModuleID = 'bpftrace'
source_filename = "bpftrace"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "bpf-pc-linux"

%"struct map_t" = type { ptr, ptr }
%"struct map_t.0" = type { ptr, ptr, ptr, ptr }
%"int64_(string[13],int64)__tuple_t" = type { i64, %"string[13]_int64__tuple_t" }
%"string[13]_int64__tuple_t" = type { [13 x i8], i64 }
%"int64_(string[3],int64)__tuple_t" = type { i64, %"string[3]_int64__tuple_t" }
%"string[3]_int64__tuple_t" = type { [3 x i8], i64 }

@LICENSE = global [4 x i8] c"GPL\00", section "license"
@ringbuf = dso_local global %"struct map_t" zeroinitializer, section ".maps", !dbg !0
@event_loss_counter = dso_local global %"struct map_t.0" zeroinitializer, section ".maps", !dbg !16

; Function Attrs: nounwind
declare i64 @llvm.bpf.pseudo(i64 %0, i64 %1) #0

define i64 @kprobe_f_1(ptr %0) section "s_kprobe_f_1" !dbg !39 {
entry:
  %tuple4 = alloca %"int64_(string[13],int64)__tuple_t", align 8
  %tuple3 = alloca %"string[13]_int64__tuple_t", align 8
  %str2 = alloca [13 x i8], align 1
  %"$t" = alloca %"int64_(string[13],int64)__tuple_t", align 8
  call void @llvm.lifetime.start.p0(i64 -1, ptr %"$t")
  call void @llvm.memset.p0.i64(ptr align 1 %"$t", i8 0, i64 32, i1 false)
  %tuple1 = alloca %"int64_(string[3],int64)__tuple_t", align 8
  %tuple = alloca %"string[3]_int64__tuple_t", align 8
  %str = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 -1, ptr %str)
  store [3 x i8] c"hi\00", ptr %str, align 1
  call void @llvm.lifetime.start.p0(i64 -1, ptr %tuple)
  call void @llvm.memset.p0.i64(ptr align 1 %tuple, i8 0, i64 16, i1 false)
  %1 = getelementptr %"string[3]_int64__tuple_t", ptr %tuple, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %str, i64 3, i1 false)
  %2 = getelementptr %"string[3]_int64__tuple_t", ptr %tuple, i32 0, i32 1
  store i64 3, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 -1, ptr %str)
  call void @llvm.lifetime.start.p0(i64 -1, ptr %tuple1)
  call void @llvm.memset.p0.i64(ptr align 1 %tuple1, i8 0, i64 24, i1 false)
  %3 = getelementptr %"int64_(string[3],int64)__tuple_t", ptr %tuple1, i32 0, i32 0
  store i64 1, ptr %3, align 8
  %4 = getelementptr %"int64_(string[3],int64)__tuple_t", ptr %tuple1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %tuple, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 -1, ptr %tuple)
  call void @llvm.memset.p0.i64(ptr align 1 %"$t", i8 0, i64 32, i1 false)
  %5 = getelementptr [24 x i8], ptr %tuple1, i64 0, i64 0
  %6 = getelementptr %"int64_(string[13],int64)__tuple_t", ptr %"$t", i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %5, i64 8, i1 false)
  %7 = getelementptr [24 x i8], ptr %tuple1, i64 0, i64 8
  %8 = getelementptr %"int64_(string[13],int64)__tuple_t", ptr %"$t", i32 0, i32 1
  %9 = getelementptr [16 x i8], ptr %7, i64 0, i64 0
  %10 = getelementptr %"string[13]_int64__tuple_t", ptr %8, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %9, i64 3, i1 false)
  %11 = getelementptr [16 x i8], ptr %7, i64 0, i64 8
  %12 = getelementptr %"string[13]_int64__tuple_t", ptr %8, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %11, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 -1, ptr %tuple1)
  call void @llvm.lifetime.start.p0(i64 -1, ptr %str2)
  store [13 x i8] c"hellolongstr\00", ptr %str2, align 1
  call void @llvm.lifetime.start.p0(i64 -1, ptr %tuple3)
  call void @llvm.memset.p0.i64(ptr align 1 %tuple3, i8 0, i64 24, i1 false)
  %13 = getelementptr %"string[13]_int64__tuple_t", ptr %tuple3, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %str2, i64 13, i1 false)
  %14 = getelementptr %"string[13]_int64__tuple_t", ptr %tuple3, i32 0, i32 1
  store i64 4, ptr %14, align 8
  call void @llvm.lifetime.end.p0(i64 -1, ptr %str2)
  call void @llvm.lifetime.start.p0(i64 -1, ptr %tuple4)
  call void @llvm.memset.p0.i64(ptr align 1 %tuple4, i8 0, i64 32, i1 false)
  %15 = getelementptr %"int64_(string[13],int64)__tuple_t", ptr %tuple4, i32 0, i32 0
  store i64 1, ptr %15, align 8
  %16 = getelementptr %"int64_(string[13],int64)__tuple_t", ptr %tuple4, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %tuple3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 -1, ptr %tuple3)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %"$t", ptr align 1 %tuple4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(i64 -1, ptr %tuple4)
  ret i64 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg %0, ptr nocapture %1) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly %0, i8 %1, i64 %2, i1 immarg %3) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly %0, ptr noalias nocapture readonly %1, i64 %2, i1 immarg %3) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg %0, ptr nocapture %1) #1

attributes #0 = { nounwind }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!36}
!llvm.module.flags = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ringbuf", linkageName: "global", scope: !2, file: !2, type: !3, isLocal: false, isDefinition: true)
!2 = !DIFile(filename: "bpftrace.bpf.o", directory: ".")
!3 = !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !2, size: 128, elements: !4)
!4 = !{!5, !11}
!5 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2, file: !2, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 864, elements: !9)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{!10}
!10 = !DISubrange(count: 27, lowerBound: 0)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !2, file: !2, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8388608, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 262144, lowerBound: 0)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "event_loss_counter", linkageName: "global", scope: !2, file: !2, type: !18, isLocal: false, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !2, size: 256, elements: !19)
!19 = !{!20, !25, !30, !33}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2, file: !2, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 2, lowerBound: 0)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !2, file: !2, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 1, lowerBound: 0)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2, file: !2, baseType: !31, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2, file: !2, baseType: !34, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!36 = distinct !DICompileUnit(language: DW_LANG_C, file: !2, producer: "bpftrace", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, globals: !37)
!37 = !{!0, !16}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = distinct !DISubprogram(name: "kprobe_f_1", linkageName: "kprobe_f_1", scope: !2, file: !2, type: !40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !44)
!40 = !DISubroutineType(types: !41)
!41 = !{!35, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!44 = !{!45}
!45 = !DILocalVariable(name: "ctx", arg: 1, scope: !39, file: !2, type: !42)