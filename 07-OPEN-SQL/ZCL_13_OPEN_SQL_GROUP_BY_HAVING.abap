    CLASS zcl_24_open_sql_having DEFINITION
      PUBLIC
      FINAL
      CREATE PUBLIC .
    
      PUBLIC SECTION.
    
        INTERFACES if_oo_adt_classrun .
      PROTECTED SECTION.
      PRIVATE SECTION.
    ENDCLASS.
    
    
    
    CLASS zcl_24_open_sql_having IMPLEMENTATION.
    
    
      METHOD if_oo_adt_classrun~main.
      SELECT currency_code,
      SUM( flight_price ) as total_price
      FROM /DMO/A_BOOKING_D
      GROUP BY currency_code
      HAVING SUM( flight_price ) > 10000
      INTO TABLE @DATA(currency_totals).
      LOOP AT currency_totals INTO DATA(current_total).
      out->write( |Currency: { current_total-currency_code } Total: { current_total-total_price }| ).
      ENDLOOP.
      ENDMETHOD.
    ENDCLASS.