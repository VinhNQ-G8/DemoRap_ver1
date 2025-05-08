@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Class Information Interface View'

define view entity ZI_CLASS_INFO_01
  as select from zclass_info_01
  association to parent ZR_CLASS_01 as _Class on $projection.class_id = _Class.class_id
  association to ZI_STUDENT_01 as _Student on $projection.student_id = _Student.student_id
{
  key class_id,
  key student_id,
  key sequence_no,
      
  @Semantics.user.createdBy: true
  local_created_by,
  @Semantics.systemDateTime.createdAt: true
  local_created_at,
  @Semantics.user.lastChangedBy: true
  local_last_changed_by,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at,

  /* Associations */
  _Class,
  _Student
} 