CLASS zcl_03_logical_operators DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_03_logical_operators IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA:
      name TYPE string,
      age TYPE i,
      cgpa TYPE p LENGTH 6 DECIMALS 2,
      sports TYPE string.

  name = 'Vishruth Gowda'.
  age = 23.
  cgpa = '8.10'.
  sports = 'No'.

  DATA:
      placement_status TYPE string,
      scholarship_status TYPE string,
      driving_licence TYPE string.

  IF age >= 21 AND cgpa >= '8.00'.
    placement_status = 'Yes'.
  ELSE.
    placement_status = 'No'.
  ENDIF.

  IF cgpa >= '8.00' OR sports = 'Yes'.
    scholarship_status = 'Yes'.
  ELSE.
    scholarship_status = 'No'.
  ENDIF.

  IF age >= 18.
    driving_licence = 'Eligible'.
  ELSE.
    driving_licence = 'Not Eligible'.
  ENDIF.

  out->write( 'Student Eligibility' ).
  out->write( repeat( val = '-' occ = 25 ) ).
  out->write( |Name     : { name }| ).
  out->write( |Age      : { age }| ).
  out->write( |CGPA     : { cgpa }| ).
  out->write( |Sports   : { sports }| ).
  out->write( repeat( val = '-' occ = 25 ) ).
  out->write( |Placement     : { placement_status }| ).
  out->write( |Scholarship   : { scholarship_status }| ).
  out->write( |Driving       : { driving_licence }| ).
  ENDMETHOD.
ENDCLASS.