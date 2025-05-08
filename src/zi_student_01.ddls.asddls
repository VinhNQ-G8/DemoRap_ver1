@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Student'

define view entity ZI_STUDENT_01
  as select from zstudent_01
{
  key student_id,
      name,
      birthdate,
      hometown,
      
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