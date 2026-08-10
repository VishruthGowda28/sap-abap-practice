CLASS zcl_15_open_sql_and DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_15_open_sql_and IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( 'AND Example' ).
    out->write( repeat( val = '-' occ = 25 ) ).
    SELECT agency_id, name, country_code
    FROM /dmo/agency
    WHERE country_code = 'US'
    AND agency_id > '070000'
    INTO TABLE @DATA(agency).
    LOOP AT agency INTO DATA(current_agency).
      out->write( |ID: { current_agency-agency_id }, Name: { current_agency-name }, Country: { current_agency-country_code }| ).
    ENDLOOP.
    out->write( | | ).
    out->write( 'OR Example' ).
    out->write( repeat( val = '-' occ = 25 ) ).
    SELECT agency_id, name, country_code
    FROM /dmo/agency
    WHERE country_code = 'IN'
    OR country_code = 'US'
    INTO TABLE @DATA(agency_us_in).
    LOOP AT agency_us_in INTO DATA(c_agency).
      out->write( |ID: { c_agency-agency_id }, Name: { c_agency-name }, Country: { c_agency-country_code }| ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.