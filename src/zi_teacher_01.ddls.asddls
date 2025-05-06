@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Teacher'
define view entity ZI_TEACHER_01 as select from zteacher_01
{
    key teacher_id,
    name,
    birthdate,
    phone,
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
    last_changed_at
} 