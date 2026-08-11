CLASS zcl_23_open_sql_group_count DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_23_open_sql_group_count IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    SELECT currency_code,
        COUNT( booking_id ) AS total_booking
        FROM /dmo/a_booking_d
        GROUP BY currency_code
        INTO TABLE @DATA(booking_totals).
    out->write( 'Booking count by currency' ).
    out->write( repeat( val = '-' occ = 30 ) ).
    LOOP AT booking_totals INTO DATA(current_booking).
      out->write( |Currency: { current_booking-currency_code }, Bookings: { current_booking-total_booking }| ).
    ENDLOOP.

    SELECT currency_code,
    AVG( flight_price ) as average_price
    FROM /DMO/A_BOOKING_D
    GROUP BY currency_code
    INTO TABLE @DATA(average_prices).
    out->write( | | ).
    out->write( 'Average price by currency' ).
    out->write( repeat( val = '-' occ = 30 ) ).
    LOOP AT average_prices INTO DATA(current_average).
      out->write( |Currency: { current_average-currency_code }, Average Price: { current_average-average_price }| ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.