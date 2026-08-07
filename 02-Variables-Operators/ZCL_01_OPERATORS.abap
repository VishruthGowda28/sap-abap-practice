CLASS zcl_01_operators DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_operators IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA:
      name       TYPE string,
      course     TYPE string,
      semester   TYPE string,
      nptel      TYPE i,
      internship TYPE i,
      project    TYPE i,
      total      TYPE i,
      average    TYPE p LENGTH 6 DECIMALS 2.

    name = 'Vishruth'.
    course = 'MCA'.
    semester = 'IV'.
    nptel = 60.
    internship = 85.
    project = 85.
    total = nptel + internship + project.
    average = total / 3.

    out->write( 'Student Information' ).
    out->write( repeat( val = '-' occ = 25 ) ).
    out->write( |Name        : { name }| ).
    out->write( |Course      : { course }| ).
    out->write( |Semester    : { semester }| ).
    out->write( |NPTEL       : { nptel }| ).
    out->write( |Internship  : { internship }| ).
    out->write( |Project     : { project }| ).
    out->write( |Total       : { total }| ).
    out->write( |Average     : { average }| ).
  ENDMETHOD.
ENDCLASS.