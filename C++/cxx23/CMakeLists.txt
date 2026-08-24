set(cxx23_sources
    size_t_literal_suffix.cpp
    lambda_optional_parens.cpp
    simpler_implicit_move.cpp
)

foreach(src ${cxx23_sources})
  set_property(SOURCE ${src}
               APPEND PROPERTY COMPILE_OPTIONS "-std=c++23" "-Wall" "-Wextra")
endforeach()

set(Source ${cxx23_sources})

# Do not look for reference output files.
set(NO_REFERENCE_OUTPUT 1)

llvm_singlesource_fujitsu(PREFIX "Fujitsu-C++-")
