@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Class Student Information'

define view entity ZI_CLASS_INFO_01
  as select from zclass_info_01
  association to parent ZR_CLASS_01 as _Class on $projection.class_id = _Class.class_id
  association to ZI_STUDENT_01 as _Student on $projection.student_id = _Student.student_id
{
  key class_id,
  key sequence_no,
      student_id,
      
      /* Associations */
      _Class,
      _Student
} 