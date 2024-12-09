CLASS zcl_department_code_437 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_department_code_437 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    AUTHORITY-CHECK OBJECT 'ZAODEPA437'
    ID 'ZAFD437' FIELD '2'.
    IF sy-subrc EQ 0.
      SELECT FROM /dmo/airport
        FIELDS *
        INTO TABLE @DATA(lt_table).
      out->write( lt_table ).
    ELSE.
      out->write( 'The user does not have the necessary permissions' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
