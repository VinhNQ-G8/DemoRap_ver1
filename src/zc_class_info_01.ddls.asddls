@EndUserText.label: 'Class Student Information'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true

define view entity ZC_CLASS_INFO_01
  as projection on ZI_CLASS_INFO_01
{
  key class_id,
  key sequence_no,
      student_id,
      
      /* Associations */
      _Class : redirected to parent ZC_CLASS_01,
      _Student : redirected to view ZI_STUDENT_01
} 