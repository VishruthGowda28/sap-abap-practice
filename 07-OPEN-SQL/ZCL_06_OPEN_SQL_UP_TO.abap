CLASS zcl_17_open_sql_up_to DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_17_open_sql_up_to IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    SELECT agency_id, name, country_code
    FROM /dmo/agency
    WHERE country_code = 'US'
    OR country_code = 'IN'
    ORDER BY agency_id DESCENDING
    INTO TABLE @DATA(agency)
    UP TO 5 ROWS.
    LOOP AT agency INTO DATA(current_agency).
      out->write( | ID: { current_agency-agency_id }, Name: { current_agency-name }, Country: { current_agency-country_code } | ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.