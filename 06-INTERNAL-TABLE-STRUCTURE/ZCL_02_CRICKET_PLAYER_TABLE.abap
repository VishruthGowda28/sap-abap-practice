CLASS zcl_11_student_table_practice DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_student_table_practice IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    TYPES:
      BEGIN OF ty_cricket_player,
        no      TYPE i,
        name    TYPE string,
        type    TYPE string,
        country TYPE string,
      END OF ty_cricket_player.

    DATA cricket_players TYPE TABLE OF ty_cricket_player.
    DATA cricket_player TYPE ty_cricket_player.

    cricket_player-no = 18.
    cricket_player-name = 'Virat Kohli'.
    cricket_player-type = 'Batsman'.
    cricket_player-country = 'IND'.
    APPEND cricket_player TO cricket_players.

    cricket_player-no = 17.
    cricket_player-name = 'AB Devilliers'.
    cricket_player-type = 'WK-Batsman'.
    cricket_player-country = 'SA'.
    APPEND cricket_player TO cricket_players.

    LOOP AT cricket_players INTO DATA(current_player).
      out->write( |Number: { current_player-no }, Name: { current_player-name }, Type: { current_player-type }, Country: { current_player-country }| ).
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.