@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Student'
define view entity ZI_STUDENT_01 as select from zstudent_01
association to parent ZR_CLASS_01 as _Class on $projection.class_id = _Class.class_id
{
    key student_id,
    name,
    birthdate,
    hometown,
    class_id,
    
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
    
    /* Association */
    _Class
} 