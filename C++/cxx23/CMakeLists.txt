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

    # P2223R2
    # GCC/Clang emit warnings for backslash-newline separated by space.
    # Test source is retained for future evaluation.
    # trimming_whitespaces_before_line_splicing.cpp

    # P2201R1
    # The proposal makes mixed-encoding string literal concatenation ill-formed.
    # Test source is retained for future evaluation.
    # mixed_string_literal_concat.cpp
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

foreach(src ${cxx23_sources})
  set_property(SOURCE ${src}
               APPEND PROPERTY COMPILE_OPTIONS "-std=c++23" "-Wall" "-Wextra")
endforeach()

set(Source ${cxx23_sources})

# Do not look for reference output files.
set(NO_REFERENCE_OUTPUT 1)

llvm_singlesource_fujitsu(PREFIX "Fujitsu-C++-")
