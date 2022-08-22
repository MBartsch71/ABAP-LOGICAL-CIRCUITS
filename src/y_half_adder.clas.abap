CLASS y_half_adder DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor.

    METHODS add IMPORTING a             TYPE i
                          b             TYPE i
                RETURNING VALUE(result) TYPE string.

  PRIVATE SECTION.
    DATA y_and TYPE REF TO yif_logical.
    DATA y_xor TYPE REF TO yif_logical.

ENDCLASS.

CLASS y_half_adder IMPLEMENTATION.

  METHOD constructor.
    y_and = NEW y_and( ).
    y_xor = NEW y_xor( ).
  ENDMETHOD.

  METHOD add.
    result = |{ y_and->evaluate( a = a b = b ) }{ y_xor->evaluate( a = a b = b ) }|.
  ENDMETHOD.

ENDCLASS.
