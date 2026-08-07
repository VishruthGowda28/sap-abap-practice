CLASS zcl_hello_example DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_hello_example IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( 'Hello, ABAP!' ).
  ENDMETHOD.
ENDCLASS.