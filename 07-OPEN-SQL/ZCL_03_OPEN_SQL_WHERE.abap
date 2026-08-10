CLASS zcl_14_open_sql_where DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_open_sql_where IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    SELECT agency_id, name, country_code
    FROM /dmo/agency
    WHERE country_code = 'IN'
    INTO TABLE @DATA(agency).
    LOOP AT agency INTO DATA(current_agency).
      out->write( |Agency ID : { current_agency-agency_id }, Name      : { current_agency-name }, Country    : { current_agency-country_code }| ).
    ENDLOOP.

    SELECT agency_id, name, country_code
    FROM /dmo/agency
    WHERE country_code = 'US'
    INTO TABLE @DATA(agency_us).
    LOOP AT agency_us INTO DATA(c_agency).
      out->write( |Agency ID : { c_agency-agency_id }, Name      : { c_agency-name }, Country   : { c_agency-country_code } | ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.