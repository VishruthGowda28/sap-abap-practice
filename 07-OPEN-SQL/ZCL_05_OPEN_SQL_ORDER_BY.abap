CLASS zcl_16_open_sql_order_by DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_16_open_sql_order_by IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( 'Ascending Order' ).
    out->write( repeat( val = '-' occ = 30 ) ).
    SELECT agency_id, name, country_code
    FROM /dmo/agency
    WHERE country_code = 'US'
    OR country_code = 'IN'
    ORDER BY agency_id
    INTO TABLE @DATA(agency).
    LOOP AT agency INTO DATA(current_agency).
      out->write( |ID: { current_agency-agency_id }, Name: { current_agency-name }, Country: { current_agency-country_code }| ).
    ENDLOOP.

    out->write( | | ).
    out->write( 'Descending Order' ).
    out->write( repeat( val = '-' occ = 30 ) ).
    SELECT agency_id, name, country_code
    FROM /dmo/agency
    WHERE country_code = 'US'
    OR country_code = 'IN'
    ORDER BY agency_id DESCENDING
    INTO TABLE @DATA(agency1).
    LOOP AT agency1 INTO DATA(c_agency).
      out->write( |ID: { c_agency-agency_id }, Name: { c_agency-name }, Country: { c_agency-country_code }| ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.