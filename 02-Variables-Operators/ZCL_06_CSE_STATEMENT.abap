CLASS zcl_01_case_statement DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_case_statement IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA:
        day TYPE i.

    day = 6.

    CASE day.
      WHEN 1.
        out->write( 'Monady' ).

      WHEN 2.
        out->write( 'Tuesday' ).

      WHEN 3.
        out->write( 'Wednesday' ).

      WHEN 4.
        out->write( 'Thursday' ).

      WHEN 5.
        out->write( 'Friday' ).

      WHEN 6.
        out->write( 'Saturday' ).

      WHEN 7.
        out->write( 'Sunday' ).

      WHEN OTHERS.
        out->write( 'Invalid Number' ).

    ENDCASE.
  ENDMETHOD.
ENDCLASS.