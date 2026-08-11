CLASS zcl_20_open_sql_min_max DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_20_open_sql_min_max IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    SELECT MIN( agency_id )
    FROM /dmo/agency
    INTO @DATA(min_agency_id).

    SELECT MAX( agency_id )
    FROM /dmo/agency
    INTO @DATA(max_agency_id).

    out->write( 'Agency Statistics' ).
    out->write( repeat( val = '-' occ = 20 ) ).
    out->write( |Minimum Agency ID : { min_agency_id }| ).
    out->write( |Maximum Agency ID : { max_agency_id }| ).
  ENDMETHOD.
ENDCLASS.