@EndUserText.label: 'Class Information Projection View'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: ['class_id', 'student_id']
@Search.searchable: true

define view entity ZC_CLASS_INFO_01
  as projection on ZI_CLASS_INFO_01
{
  @Search.defaultSearchElement: true
  key class_id,
  
  @Search.defaultSearchElement: true
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
  _Class : redirected to parent ZC_CLASS_01,
  _Student : redirected to ZC_STUDENT_01
} 