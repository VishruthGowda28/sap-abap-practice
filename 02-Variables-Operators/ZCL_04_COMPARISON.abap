CLASS zcl_02_comparison DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_comparison IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA:
      name            TYPE string,
      age             TYPE i,
      cgpa            TYPE p LENGTH 6 DECIMALS 2,
      adult_status    TYPE string,
      topper_status   TYPE string,
      eligible_status TYPE string.

    name = 'Vishruth Gowda'.
    age = 19.
    cgpa = '8.10'.

    IF age >= 18.
      adult_status = 'Yes'.
    ELSE.
      adult_status = 'No'.
    ENDIF.

    IF cgpa >= '8.00'.
      topper_status = 'Yes'.
    ELSE.
      topper_status = 'No'.
    ENDIF.

    IF age >= 21.
      eligible_status = 'Yes'.
    ELSE.
      eligible_status = 'No'.
    ENDIF.
    out->write( '***Student Details***' ).
    out->write( |Name       : { name } | ).
    out->write( |Adult      : { adult_status }| ).
    out->write( |Topper     : { topper_status }| ).
    out->write( |Eligible   : { eligible_status }| ).
  ENDMETHOD.
ENDCLASS.