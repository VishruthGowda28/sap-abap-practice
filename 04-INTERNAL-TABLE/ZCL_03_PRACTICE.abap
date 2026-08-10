CLASS zcl_09_structures_practice DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_09_structures_practice IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( 'Single value using variable' ).
    out->write( repeat( val = '-' occ = 25 ) ).
    DATA name TYPE string. "" It stores only single value
    name = 'Vishruth'.
    out->write( |Name: { name }| ).
    out->write( | | ).
    out->write( 'Table for storing multiple values in single variable' ).
    out->write( repeat( val = '-' occ = 55 ) ).
    DATA students TYPE TABLE OF string. "" It stores multiple values of same type string
    APPEND 'Vishruth' TO students.
    APPEND 'Virat' TO students.
    APPEND 'dboss' TO students.
    LOOP AT students INTO DATA(student).
      out->write( |{ sy-tabix } : { student }| ).
    ENDLOOP.
    out->write( | | ).
    out->write( 'Internal-Table with Structures' ).
    out->write( repeat( val = '-' occ = 25 ) ).
    TYPES:                      " Structure groups multiple related fields,
      BEGIN OF ty_student,    " and each field can have its own data type.
        id       TYPE i,
        name     TYPE string,
        course   TYPE string,
        semester TYPE string,
        cgpa     TYPE p LENGTH 6 DECIMALS 2,
      END OF ty_student.

    DATA student_data TYPE ty_student.
    student_data-id = '115'.
    student_data-name = 'Vishruth'.
    student_data-course = 'MCA'.
    student_data-semester = 'IV'.
    student_data-cgpa = '8.10'.
    out->write( | | ).
    out->write( 'Student Details' ).
    out->write( repeat( val = '-' occ = 20 ) ).
    out->write( |ID       : { student_data-id }| ).
    out->write( |Name     : { student_data-name }| ).
    out->write( |Course   : { student_data-course }| ).
    out->write( |Semester : { student_data-semester }| ).
    out->write( |CGPA     : { student_data-cgpa }| ).
    out->write( | | ).
    out->write( 'Example for Internal Table Structures' ).
    out->write( repeat(  val = '-' occ = 35 ) ).
    TYPES:
      BEGIN OF ty_employee,
        id     TYPE i,
        name   TYPE string,
        salary TYPE p LENGTH 8 DECIMALS 2,
      END OF ty_employee.

    DATA employees TYPE TABLE OF ty_employee.
    DATA employee TYPE ty_employee.
    employee-id = 101.
    employee-name = 'Vishruth'.
    employee-salary = '45000.50'.
    APPEND employee TO employees.
    employee-id = 18.
    employee-name = 'Virat'.
    employee-salary = '18000.60'.
    APPEND employee TO employees.

    LOOP AT employees INTO DATA(current_employee).
      out->write( |ID: { current_employee-id }, Name: { current_employee-name }, Salary: { current_employee-salary }| ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.