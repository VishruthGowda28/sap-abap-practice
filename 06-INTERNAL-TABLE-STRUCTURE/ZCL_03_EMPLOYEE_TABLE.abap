CLASS zcl_12_employee_table DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_12_employee_table IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    TYPES:
      BEGIN OF ty_employee,
        id         TYPE i,
        name       TYPE string,
        department TYPE string,
        salary     TYPE p LENGTH 8 DECIMALS 2,
      END OF ty_employee.

    DATA employees TYPE TABLE OF ty_employee.
    DATA employee TYPE ty_employee.
    employee-id = 101.
    employee-name = 'Vishruth'.
    employee-department = 'SAP ABAP'.
    employee-salary = '50000.00'.
    APPEND employee TO employees.

    employee-id = 118.
    employee-name = 'Virat'.
    employee-department = 'SAP MM'.
    employee-salary = '80000.00'.
    APPEND employee TO employees.

    LOOP AT employees INTO DATA(current_employee).
      out->write( |ID: { current_employee-id }, Name: { current_employee-name }, Department: { current_employee-department }, Salary: { current_employee-salary }| ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.