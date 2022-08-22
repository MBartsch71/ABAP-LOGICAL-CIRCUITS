CLASS tc_half_adder DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    DATA cut TYPE REF TO y_half_adder.

    METHODS setup.
    METHODS add_1_and_1_binary_eq_10 FOR TESTING.
    METHODS add_0_and_1_binary_eq_01 FOR TESTING.
    METHODS add_1_and_0_binary_eq_01 FOR TESTING.
    METHODS add_0_and_0_binary_eq_00 FOR TESTING.

ENDCLASS.

CLASS tc_half_adder IMPLEMENTATION.

  METHOD setup.
    cut = NEW #( ).
  ENDMETHOD.

  METHOD add_1_and_1_binary_eq_10.
    cl_abap_unit_assert=>assert_equals( exp = |10| act = cut->add( a = 1 b = 1 ) ).
  ENDMETHOD.

  METHOD add_0_and_1_binary_eq_01.
    cl_abap_unit_assert=>assert_equals( exp = |01| act = cut->add( a = 0 b = 1 ) ).
  ENDMETHOD.

  METHOD add_1_and_0_binary_eq_01.
    cl_abap_unit_assert=>assert_equals( exp = |01| act = cut->add( a = 1 b = 0 ) ).
  ENDMETHOD.

  METHOD add_0_and_0_binary_eq_00.
    cl_abap_unit_assert=>assert_equals( exp = |00| act = cut->add( a = 0 b = 0 ) ).
  ENDMETHOD.

ENDCLASS.
