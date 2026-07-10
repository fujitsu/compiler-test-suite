set(cxx17_sources
  aggregate_init_with_base.cpp
  attr_namespace_enum.cpp
  attribute_namespace_using.cpp
  auto_non_type_template_param.cpp
  # bool_increment_removed.cpp
  class_template_argument_deduction.cpp
  constexpr_if.cpp
  constexpr_lambda.cpp
  direct_list_init_auto.cpp
  enum_direct_list_init.cpp
  exception-spec-type.cpp
  fallthrough_attr.cpp
  fold_expression.cpp
  guaranteed_copy_elision.cpp
  has_include_preprocessor.cpp
  hex_float_literal.cpp
  if_switch_init_statement.cpp
  ignore_unknown_attributes.cpp
  inline_variables.cpp
  lambda_capture_this_value.cpp
  maybe_unused_attr.cpp
  nested_namespace_definition.cpp
  no_trigraphs.cpp
  nodiscard_attr.cpp
  non_type_template_consteval.cpp
  overaligned_allocation.cpp
  pack_expansion_using_declaration.cpp
  range_for_sentinel.cpp
  # remove_register_storage_class.cpp
  removed_dynamic_exception_spec.cpp
  static_assert_no_message.cpp
  stricter_expression_evaluation_order.cpp
  structured_bindings.cpp
  template_template_compat.cpp
  template_template_typename.cpp
  u8_char_literals.cpp
)

foreach(src ${cxx17_sources})
  set_property(SOURCE ${src}
               APPEND PROPERTY COMPILE_OPTIONS "-std=c++17")
endforeach()

llvm_singlesource_fujitsu(PREFIX "Fujitsu-C++-")
