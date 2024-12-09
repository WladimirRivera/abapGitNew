CLASS zcl_student_projects_437 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
    METHODS create_project IMPORTING iv_project_name        TYPE string
                                     iv_project_description TYPE string
                           EXPORTING ev_project             TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_student_projects_437 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    me->create_project(
      EXPORTING
        iv_project_name        = 'Students'
        iv_project_description = 'abapGit Project'
    IMPORTING
      ev_project          = DATA(lv_project)
    ).
    out->write( lv_project ).
  ENDMETHOD.
  METHOD create_project.
    ev_project = |{ iv_project_name } - { iv_project_description }|.
  ENDMETHOD.
ENDCLASS.
