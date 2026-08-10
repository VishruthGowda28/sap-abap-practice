CLASS zcl_13_open_sql DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_13_open_sql IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    SELECT agency_id, name
    FROM /dmo/agency
    INTO TABLE @DATA(agency).
    out->write( agency ).
  ENDMETHOD.
ENDCLASS.