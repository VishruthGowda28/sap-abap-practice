CLASS zcl_22_open_sql_group_by DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_22_open_sql_group_by IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    SELECT currency_code,
    SUM( flight_price ) as total_price
    FROM /dmo/a_booking_d
    GROUP BY currency_code
    INTO TABLE @DATA(currency_totals).
    out->write( 'Flight Price by Country' ).
    out->write( repeat( val = '-' occ = 30 ) ).
    LOOP AT currency_totals INTO DATA(current_price).
      out->write( |Country Code: { current_price-currency_code }, Total Price: { current_price-total_price }| ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.