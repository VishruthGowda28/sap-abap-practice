CLASS zcl_07_internal_table DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_07_internal_table IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA students TYPE TABLE OF string.
    APPEND 'Vishruth Gowda' TO students.
    APPEND 'Virat Kohli' TO students.
    APPEND 'Narendra Modi' TO students.
    out->write( 'Student List' ).
    out->write( repeat( val = '-' occ = 20 ) ).
    LOOP AT students INTO DATA(student).
      out->write( |{ sy-tabix } : { student }| ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.