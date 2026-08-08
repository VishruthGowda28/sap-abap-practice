CLASS zcl_06_loop_statements DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_06_loop_statements IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( 'Do Example' ).
    DO 5 TIMES.
      out->write( sy-index ).
    ENDDO.
    out->write( 'While Example' ).
    DATA:
        counter TYPE i.

    counter = 1.
    WHILE counter <= 6.
      out->write( counter ).
      counter += 1.
    ENDWHILE.
    out->write( 'Loop Example' ).
    DO 5 TIMES.
      out->write( |{ sy-index } : Welcome to ABAP| ).
    ENDDO.
  ENDMETHOD.
ENDCLASS.