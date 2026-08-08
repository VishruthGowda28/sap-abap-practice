CLASS zcl_08_structures DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_08_structures IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    TYPES:
      BEGIN OF ty_employee,
        id         TYPE i,
        name       TYPE string,
        department TYPE string,
        salary     TYPE p LENGTH 8 DECIMALS 2,
      END OF ty_employee.

    DATA employee TYPE ty_employee.
    employee-id = 101.
    employee-name = 'Vishruth Gowda'.
    employee-department = 'MCA'.
    employee-salary = '50000.00'.

    out->write( 'Employee Details' ).
    out->write( repeat( val = '-' occ = 40 ) ).
    out->write( |Employee ID         : { employee-id }| ).
    out->write( |Employee Name       : { employee-name }| ).
    out->write( |Employee Department : { employee-department }| ).
    out->write( |Employee Salary     : { employee-salary }| ).
  ENDMETHOD.
ENDCLASS.