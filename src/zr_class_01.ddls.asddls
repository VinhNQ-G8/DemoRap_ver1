@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Class'

define root view entity ZR_CLASS_01
  as select from zclass_01
  composition [0..*] of ZI_CLASS_INFO_01 as _ClassInfo
  association [1..1] to ZI_TEACHER_01 as _Teacher on $projection.teacher_id = _Teacher.teacher_id
{
  key class_id,
      class_name,
      teacher_id,
      student_count,
      
      /* Associations */
      _ClassInfo,
      _Teacher,
      
      /* Administrative fields */
      @Semantics.user.createdBy: true
      local_created_by,
      @Semantics.systemDateTime.createdAt: true
      local_created_at,
      @Semantics.user.lastChangedBy: true
      local_last_changed_by,
      @Semantics.systemDateTime.lastChangedAt: true
      local_last_changed_at,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_changed_at
} 