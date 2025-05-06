@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Class'
define root view entity ZR_CLASS_01 as select from zclass_01
composition [0..*] of ZI_STUDENT_01 as _Students 
association [0..1] to ZI_TEACHER_01 as _Teacher on $projection.teacher_id = _Teacher.teacher_id
{
    key class_id,
    class_name,
    teacher_id,
    student_count,
    
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
    _Students,
    _Teacher
} 