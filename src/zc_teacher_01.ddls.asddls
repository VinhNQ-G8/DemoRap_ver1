@EndUserText.label: 'Teacher Projection View'
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: ['teacher_id']
@Search.searchable: true
define view entity ZC_TEACHER_01 as projection on ZI_TEACHER_01
{
    @Search.defaultSearchElement: true
    key teacher_id,
    
    @Search.defaultSearchElement: true
    name,
    
    @Consumption.filter.selectionType: #INTERVAL
    birthdate,
    
    phone,
    
    @Consumption.valueHelpDefinition: [{ entity: { name: 'ZC_CLASS_01', element: 'class_id' } }]
    class_id,
    
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
    last_changed_at
} 