set(cxx23_sources
    size_t_literal_suffix.cpp
    lambda_optional_parens.cpp
    simpler_implicit_move.cpp
    if_consteval.cpp
    duplicate_attributes.cpp
    contextual_bool_conversion.cpp
    declaration_order_layout.cpp
    uax31_identifier.cpp
    deducing_this.cpp
    multidimensional_subscript.cpp
    constexpr_nonliteral.cpp
    diagnostic_text_encoding.cpp
    character_set_encoding.cpp
    character_literal_encoding.cpp
    elifdef_elifndef.cpp
    init_statement_alias.cpp
    auto_decay_copy.cpp
    lambda_attributes.cpp

    # P2223R2
    # GCC/Clang emit warnings for backslash-newline separated by space.
    # Test source is retained for future evaluation.
    # trimming_whitespaces_before_line_splicing.cpp

    # P2201R1
    # The proposal makes mixed-encoding string literal concatenation ill-formed.
    # Test source is retained for future evaluation.
    # mixed_string_literal_concat.cpp

    # P0533R9
    # This C++23 feature is not yet supported in the current test environment.
    # Test source is retained for future evaluation.
    # constexpr_cmath_cstdlib.cpp
)
    # P2036R3 / P2579R0
    # GCC 15.2.1 does not yet implement this C++23 feature.
    # Test source is retained for future evaluation.
    # GCC emits warnings for backslash-newline separated by space.
    # Run only on Clang-based compilers.
    if(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
        list(APPEND cxx23_sources
            lambda_trailing_return_scope.cpp
            )
    endif()

    # P2255R2
    # Clang does not yet support this C++23 feature.
    # Run only on GCC.
    if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
        list(APPEND cxx23_sources
            reference_binds_temporary.cpp
            )
    endif()

foreach(src ${cxx23_sources})
  set_property(SOURCE ${src}
               APPEND PROPERTY COMPILE_OPTIONS "-std=c++23" "-Wall" "-Wextra")
endforeach()

set(Source ${cxx23_sources})

# Do not look for reference output files.
set(NO_REFERENCE_OUTPUT 1)

llvm_singlesource_fujitsu(PREFIX "Fujitsu-C++-")
