CLASS zcl_select_with_atc_437 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
    METHODS get_data RETURNING VALUE(rv_status) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_select_with_atc_437 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( me->get_data( ) ).
  ENDMETHOD.
  METHOD get_data.

    SELECT FROM /dmo/flight
        FIELDS *
        INTO TABLE @DATA(lt_flights).
    IF sy-subrc EQ 0.
      rv_status = |Records consulted: { sy-dbcnt }| ##NO_TEXT.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
