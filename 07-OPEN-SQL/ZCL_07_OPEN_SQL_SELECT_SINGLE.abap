CLASS zcl_18_open_sql_select_single DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_18_open_sql_select_single IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    SELECT SINGLE agency_id, name, country_code
    FROM /dmo/agency
    WHERE agency_id = '070019'
    INTO @DATA(agency).
    out->write( 'Agency Details' ).
    out->write( repeat( val = '-' occ = 30 ) ).
    out->write( |Agency ID : { agency-agency_id }| ).
    out->write( |Name      : { agency-name }| ).
    out->write( |Country   : { agency-country_code }| ).
  ENDMETHOD.
ENDCLASS.