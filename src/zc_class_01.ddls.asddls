@EndUserText.label: 'Class'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.semanticKey: ['class_id']
@ObjectModel.transactionalProcessingEnabled: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@VDM.viewType: #CONSUMPTION
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API

define root view entity ZC_CLASS_01
  provider contract transactional_query
  as projection on ZR_CLASS_01
{
  key class_id,
      @Search.defaultSearchElement: true
      class_name,
      teacher_id,
      student_count,
      
      /* Associations */
      _ClassInfo : redirected to composition child ZC_CLASS_INFO_01,
      _Teacher,
      
      /* Administrative fields */
      local_created_by,
      local_created_at,
      local_last_changed_by,
      local_last_changed_at,
      last_changed_at
} 