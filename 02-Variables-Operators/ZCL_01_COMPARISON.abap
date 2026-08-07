CLASS zcl_comparison_operators DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_comparison_operators IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA:
      name TYPE string,
      age  TYPE i,
      cgpa TYPE p LENGTH 6 DECIMALS 2.

    name = 'Vishruth Gowda'.
    age = 19.
    cgpa = '8.1'.

    DATA:
      is_adult  TYPE abap_bool,
      is_topper TYPE abap_bool,
      eligible  TYPE abap_bool.

    IF age >= 18.
      is_adult = abap_true.
    ELSE.
      is_adult = abap_false.
    ENDIF.

    IF cgpa >= '8.0'.
      is_topper = abap_true.
    ELSE.
      is_topper = abap_false.
    ENDIF.

    IF age >= 21.
      eligible = abap_true.
    ELSE.
      eligible = abap_false.
    ENDIF.

    out->write( |Name: { name }| ).
    out->write( |Adult: { is_adult }| ).
    out->write( |Topper: { is_topper }| ).
    out->write( |Eligible: { eligible }| ).

  ENDMETHOD.
ENDCLASS.