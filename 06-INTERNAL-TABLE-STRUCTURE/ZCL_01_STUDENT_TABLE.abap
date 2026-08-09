CLASS zcl_10_student_table DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_student_table IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    TYPES:
      BEGIN OF ty_student,
        id       TYPE i,
        name     TYPE string,
        course   TYPE string,
        semester TYPE string,
        college  TYPE string,
        cgpa     TYPE p LENGTH 6 DECIMALS 2,
      END OF ty_student.

    DATA students TYPE TABLE OF ty_student.
    DATA student TYPE ty_student.
    student-id = '115'.
    student-name = 'Vishruth'.
    student-course = 'MCA'.
    student-semester = '4th Semester'.
    student-college = 'Vidyavardhaka College of Engineering'.
    student-cgpa = '8.10'.
    APPEND Student TO Students.

    student-id = '116'.
    student-name = 'Raghunandana'.
    student-course = 'ISE'.
    student-semester = '1st Semester'.
    student-college  = 'JSS'.
    student-cgpa = '8.19'.
    APPEND student TO students.

    student-id = '117'.
    student-name = 'Yashwanth'.
    student-course = 'BCA'.
    student-semester = '2nd Semester'.
    student-college = 'Puttaswammy First Grade College'.
    student-cgpa = '7.54'.
    APPEND student TO students.

    LOOP AT students INTO DATA(current_student).
      out->write( |ID : { current_student-id }, Name : { current_student-name }, Course : { current_student-course }, Semester: { current_student-semester }, College : { current_student-college }, CGPA : { current_student-cgpa } | ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.