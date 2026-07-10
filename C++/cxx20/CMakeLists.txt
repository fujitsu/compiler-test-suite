set(cxx20_sources
    access_checking_on_specializations.cpp
    adl_hidden_function_templates.cpp
    aggregate_ctad.cpp
    aggregate_paren_init.cpp
    alias_template_ctad.cpp
    array_unknown_bound_conversion.cpp
    bitfield_default_member_initializer.cpp
    char8_t_literal_type.cpp
    class_types_as_nttp.cpp
    concepts.cpp
    conditional_explicit.cpp
    const_ref_qualified_member_pointer.cpp
    consteval_mandatory_compile_time.cpp
    constexpr_relaxations.cpp
    constinit.cpp
    coroutines.cpp
    defaulted_copy_ctor_const_mismatch.cpp
    deprecated_subscript_comma.cpp
    deprecated_volatile_operations.cpp
    designated_initializers.cpp
    destroying_delete_basic.cpp
    feature_test_macros.cpp
    generalized_nttp_scalar_types.cpp
    is_constant_evaluated_paths.cpp
    lambda-init-capture-pack-expansion.cpp
    lambda_capture_equals_this.cpp
    lambda_template_parameter_list.cpp
    lambdas_in_unevaluated_contexts.cpp
    likely_unlikely_attributes.cpp
    more_implicit_moves.cpp
    nested-inline-namespaces.cpp
    no_unique_address_member_layout.cpp
    nodiscard_with_reason.cpp
    # nodiscard_with_reason_diagnostics.cpp
    prohibit_aggregate_user_declared_ctor.cpp
    pseudo_destructor_lifetime.cpp
    range_for_with_initializer.cpp
    signed_integers_twos_complement.cpp
    stateless_lambda_default_construct_and_assign.cpp
    stronger_unicode_requirements.cpp
    structured_binding_extensions.cpp
    three_way_comparison.cpp
    typename_optional_in_more_contexts.cpp
    using_enum.cpp
    va_opt_comma_elision.cpp
)

foreach(src ${cxx20_sources})
  set_property(SOURCE ${src}
               APPEND PROPERTY COMPILE_OPTIONS "-std=c++20")
endforeach()

llvm_singlesource_fujitsu(PREFIX "Fujitsu-C++-")
