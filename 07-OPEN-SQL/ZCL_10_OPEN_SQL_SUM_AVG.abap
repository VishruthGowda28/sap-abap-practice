CLASS zcl_21_open_sql_sum_avg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_21_open_sql_sum_avg IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    SELECT SUM( flight_price )
    FROM /dmo/a_booking_d
    INTO @DATA(total_price).

    SELECT AVG( flight_price )
    FROM /dmo/a_booking_d
    INTO @DATA(avg_price).

    SELECT MIN( flight_price )
    FROM /dmo/a_booking_d
    INTO @DATA(min_price).

    SELECT MAX( flight_price )
    FROM /dmo/a_booking_d
    INTO @DATA(max_price).

    out->write( 'Flight Price Statistics' ).
    out->write( repeat( val = '-' occ = 30 ) ).
    out->write( |Total Price    : { total_price }| ).
    out->write( |Average Price  : { avg_price }| ).
    out->write( |Minimum Price  : { min_price }| ).
    out->write( |Maximum Price  : { max_price }| ).
  ENDMETHOD.
ENDCLASS.