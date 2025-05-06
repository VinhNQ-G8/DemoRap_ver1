@EndUserText.label: 'Class Projection View'
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: ['class_id']
@Search.searchable: true
define root view entity ZC_CLASS_01 as projection on ZR_CLASS_01
{
    @Search.defaultSearchElement: true
    key class_id,
    
    @Search.defaultSearchElement: true
    class_name,
    
    @Consumption.valueHelpDefinition: [{ entity: { name: 'ZC_TEACHER_01', element: 'teacher_id' } }]
    teacher_id,
    
    @Semantics.quantity.unitOfMeasure: 'UNIT'
    student_count,
    
    // Administrative Data
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
    _Students: redirected to composition child ZC_STUDENT_01,
    _Teacher: redirected to ZC_TEACHER_01
} 