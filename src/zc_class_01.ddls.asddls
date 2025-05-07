@EndUserText.label: 'Class'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true

define root view entity ZC_CLASS_01
  as projection on ZR_CLASS_01
{
  key class_id,
      @Search.defaultSearchElement: true
      class_name,
      teacher_id,
      student_count,
      
      /* Associations */
      _ClassInfo : redirected to composition child ZC_CLASS_INFO,
      _Teacher : redirected to view ZC_TEACHER_01,
      
      /* Administrative fields */
      local_created_by,
      local_created_at,
      local_last_changed_by,
      local_last_changed_at,
      last_changed_at
} 