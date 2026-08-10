CLASS zcl_19_open_sql_count DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_19_open_sql_count IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    SELECT COUNT( * )
    FROM /dmo/agency
    INTO @DATA(number_of_agencies).

    SELECT COUNT( * )
    FROM /dmo/agency
    WHERE country_code = 'US'
    INTO @DATA(us_agencies).

    SELECT COUNT( * )
    FROM /dmo/agency
    WHERE country_code = 'IN'
    INTO @DATA(in_agencies).

    out->write( 'Agency Statistics' ).
    out->write( repeat( val = '-' occ = 20 ) ).
    out->write( |Total Agencies : { number_of_agencies }| ).
    out->write( |US Agencies    : { us_agencies }| ).
    out->write( |IN Agencies    : { in_agencies }| ).
  ENDMETHOD.
ENDCLASS.