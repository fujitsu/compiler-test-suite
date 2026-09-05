# Put Fortran module files in separate directories.
#
# Several Fortran tests build modules with the same name at build-time.
# To avoid module filename conflict, this function forces module files
# to be put in per-executable directories.
#
# This function should be called after llvm_singlesource_fujitsu in the
# per-directory CMakeLists.txt. This has effect for all executables added
# by llvm_singlesource_fujitsu.
#
# This feature may be integrated to the llvm_singlesource function once
# the Fujitsu Compiler Test Suite is integrated to the LLVM test-suite.
function(llvm_set_own_fortran_module_directory)
  get_directory_property(targets BUILDSYSTEM_TARGETS)
  foreach(target ${targets})
    set_target_properties(${target} PROPERTIES Fortran_MODULE_DIRECTORY "${target}.d")
  endforeach()
endfunction()

# Set the `sources` variable, which is a list of source filenames to
# compile and run, in the parent scope.
#
# If the `Source` variable is set, it is used as a base list. Otherwise,
# a list of all C/C++/Fortran source files are used as a base list.
# Inappropriate source files are filtered out from the base list based
# on the TEST_SUITE_FUJITSU_TEST_OPENMP cache variable and the openmp_tests
# variable.
#
# Each CMakeLists.txt file which call llvm_singlesource_fujitsu and others
# should define the openmp_tests variable if the directory includes
# OpenMP test source files. The value is a list of base names of tests
# like `0123_4567;7654_3210` or `ALL`.
#
# This function is intended to be used only in this CMakeLists.txt file.
function(llvm_set_sources)
  # If the `Source` list variable is defined, use it as a set of source files
  # to compile and run. Same as llvm_singlesource.
  if(DEFINED Source)
    set(sources ${Source})
  else()
    file(GLOB sources
         *.c *.cpp *.cc
         *.for *.FOR *.fpp *.FPP *.[fF] *.[fF]90 *.[fF]95 *.[fF]03 *.[fF]08)
  endif()

  # TEST_SUITE_FUJITSU_TEST_OPENMP may be mixed-case ON, OFF, or ONLY.
  string(TOUPPER ${TEST_SUITE_FUJITSU_TEST_OPENMP} test_openmp)

  # Filter out inappropriate source files from `sources`.
  foreach(source ${sources})
    # openmp_tests is a list of base names of OpenMP tests or ALL.
    basename(name ${source})
    if((openmp_tests STREQUAL "ALL") OR (name IN_LIST openmp_tests))
      if(NOT TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_OPENMP)
        # Remove OpenMP tests.
        list(REMOVE_ITEM sources "${source}")
      endif()
    else()
      if(NOT TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
        # Remove non-OpenMP tests.
        list(REMOVE_ITEM sources "${source}")
      endif()
    endif()
  endforeach()

  set(sources "${sources}" PARENT_SCOPE)
endfunction()

# Set OpenMP compile/link options (-fopenmp) for given sources if they are
# OpenMP sources.
#
# This function is intended to be used only in this CMakeLists.txt file.
function(llvm_set_openmp_sources prefix sources)
  foreach(source ${sources})
    basename(name ${source})
    if((openmp_tests STREQUAL "ALL") OR (name IN_LIST openmp_tests))
      set(target ${prefix}${name})
      target_link_libraries(${target} PRIVATE OpenMP::OpenMP_${llvm_test_lang})
    endif()
  endforeach()
endfunction()

# Set OpenMP compile/link options (-fopenmp) for given targets.
#
# This function is intended to be used in per-directory CMakeLists.txt files,
# after llvm_multisource or llvm_multisource_compile_only.
function(llvm_set_openmp_targets targets)
  # get_directory_property(targets BUILDSYSTEM_TARGETS)
  foreach(target ${targets})
    target_link_libraries(${target} PRIVATE OpenMP::OpenMP_${llvm_test_lang})
  endforeach()
endfunction()

# Wrapper of the llvm_singlesource function defined in the LLVM test-suite.
#
# The llvm_singlesource function, which is defined in the
# cmake/modules/SingleMultiSource.cmake file in the LLVM test-suite, cannot
# well handle per-test FP_TOLERANCE, FP_ABSTOLERANCE, and FP_IGNOREWHITESPACE
# settings, which control options for the `fpcmp` command.
#
# If the fpconfig.cmake file exists in the current directory, this function
# reads the file. In addition, if the value of the
# TEST_SUITE_FUJITSU_WITH_FAST_MATH variable is true and the fastmath.cmake
# file exists in the current directory, this function reads the file.
# Then, this function calls llvm_singlesource with per-test `FP_*` settings.
# Otherwise, this function simply calls llvm_singlesource.
#
# These files can set FP_TOLERANCE, FP_ABSTOLERANCE, or FP_IGNOREWHITESPACE
# settings for each test by prefixing the base name of the test and `-`.
# For example, if you want to set 1.0e-12 to FP_TOLERANCE for a test program
# 0123_4567.c, put `set(0123_4567-FP_TOLERANCE 1.0e-12)`.
#
# Arguments for this function is same as those for llvm_singlesource.
function(llvm_singlesource_fujitsu)
  # Optional `PREFIX` argument. Same as llvm_singlesource.
  cmake_parse_arguments(_LSARG "" "PREFIX" "" ${ARGN})

  # Set the list of source filenames to the `sources` variable.
  llvm_set_sources()
  if(NOT sources)
    return()
  endif()

  if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/fpconfig.cmake)
    list(APPEND fp_config_files ./fpconfig.cmake)
  endif()
  if(TEST_SUITE_FUJITSU_WITH_FAST_MATH AND
     EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/fastmath.cmake)
    list(APPEND fp_config_files ./fastmath.cmake)
  endif()

  if(NOT fp_config_files)
    set(Source ${sources})
    llvm_singlesource(${ARGV})
    llvm_set_openmp_sources("${_LSARG_PREFIX}" "${sources}")
    return()
  endif()

  # Read the fpconfig.cmake and fastmath.cmake files, which set per-test
  # `FP_*` settings.
  foreach(fp_config_file IN LISTS fp_config_files)
    include(${fp_config_file})
  endforeach()

  # Save the default `FP_*` values.
  set(fp_config_names FP_TOLERANCE FP_ABSTOLERANCE FP_IGNOREWHITESPACE)
  foreach(fp_config_name ${fp_config_names})
    set(default-${fp_config_name} ${${fp_config_name}})
  endforeach()

  # Call the llvm_singlesource function for each test with setting per-test
  # `FP_*` variables.
  foreach(source ${sources})
    # `0123_4567` for example
    basename(name ${source})
    foreach(fp_config_name ${fp_config_names})
      # `0123_4567-FP_TOLERANCE` for example
      if(DEFINED ${name}-${fp_config_name})
        set(${fp_config_name} ${${name}-${fp_config_name}})
      else()
        set(${fp_config_name} ${default-${fp_config_name}})
      endif()
    endforeach()
    set(Source ${source})
    llvm_singlesource(${ARGV})
  endforeach()
  llvm_set_openmp_sources("${_LSARG_PREFIX}" "${sources}")
endfunction()

# Set single-source test programs in a directory as compile-only.
#
# Each source file in the specified directory is compiled into an executable
# but it is not run.
#
# This function should be called instead of llvm_singlesource_fujitsu in the
# per-directory CMakeLists.txt.
function(llvm_singlesource_compile_only_directory)
  # Optional `PREFIX` argument. Same as llvm_singlesource.
  cmake_parse_arguments(_LSARG "" "PREFIX" "" ${ARGN})

  # Set the list of source filenames to the `sources` variable.
  llvm_set_sources()

  foreach(source ${sources})
    basename(name ${source})
    set(target ${_LSARG_PREFIX}${name})
    llvm_test_executable_no_test(${target} ${source})
  endforeach()
  llvm_set_openmp_sources("${_LSARG_PREFIX}" "${sources}")
endfunction()

# Set a single-source test program as compile-only.
#
# The specified source file is compiled into an executable but it is not run.
#
# This function should be called before llvm_singlesource_fujitsu in the
# per-directory CMakeLists.txt because this function sets `Source` variable
# and which is used in llvm_singlesource.
function(llvm_singlesource_compile_only_file filename)
  # Optional `PREFIX` argument. Same as llvm_singlesource.
  cmake_parse_arguments(_LSARG "" "PREFIX" "" ${ARGN})
  # If the `Source` list variable is defined, llvm_singlesource_fujitsu will
  # use it as a set of source files to compile and run. If it is defined,
  # we need to remove the specified source file from it. If not, we need
  # to set it to source files other than the specified source file.
  llvm_set_sources()
  foreach(source ${sources})
    get_filename_component(fname ${source} NAME)
    if(fname STREQUAL filename)
      basename(name ${source})
      set(target ${_LSARG_PREFIX}${name})
      llvm_test_executable_no_test(${target} ${source})
      llvm_set_openmp_sources(${_LSARG_PREFIX} "${source}")
      list(REMOVE_ITEM sources "${source}")
    endif()
  endforeach()
  set(Source "${sources}" PARENT_SCOPE)
endfunction()

# Set a multi-source test program as compile-only.
#
# Source files in the current directory is compiled into an executable but it
# is not run.
#
# This function should be called instead of llvm_multisource in the
# per-directory CMakeLists.txt.
function(llvm_multisource_compile_only target)
  # Same as llvm_multisource except that llvm_test_traditional and
  # llvm_add_test_for_target functions are not called.
  set(sources ${ARGN})
  if(NOT sources)
    file(GLOB sources
         *.c *.cpp *.cc
         *.for *.FOR *.fpp *.FPP *.[fF] *.[fF]90 *.[fF]95 *.[fF]03 *.[fF]08)
  endif()

  llvm_test_executable_no_test(${target} ${sources})
endfunction()

set(TEST_SUITE_FUJITSU_TEST_LANG "C;C++;Fortran" CACHE STRING
    "List of programming languages to test in the Fujitsu Compiler Test Suite (default: \"C;C++;Fortran\")")

set(TEST_SUITE_FUJITSU_TEST_OPENMP ON CACHE STRING
    "ON: Enable OpenMP tests (if the compiler supports it). OFF: Disable OpenMP tests. ONLY: Enable only OpenMP tests.")

option(TEST_SUITE_FUJITSU_WITH_FAST_MATH
  "Enable special configurations for fast-math. If you use the -ffath-math compiler flag, this option should be set. Side effects by fast-math, like precision errors of floating-point arithmetic, can be absorbed."
  OFF)

option(TEST_SUITE_FUJITSU_FORCE_UNSUPPORTED_PLATFORM
  "Force to enable the Fujitsu Compiler Test Suite on unsupported platforms. Currently only Linux/AArch64 is supported."
  OFF)

set(TEST_SUITE_FP_TOLERANCE_FP64 0x1.0p-51 CACHE STRING
    "Default relative tolerance for IEEE 754 binary64 (double-precision floating-point) arithmetic. This value is used by the fpcmp command. (default: 2 ULPs for IEEE 754 binary64)")
set(TEST_SUITE_FP_TOLERANCE_FP32 0x1.0p-22 CACHE STRING
    "Default relative tolerance for IEEE 754 binary32 (single-precision floating-point) arithmetic. This value is used by the fpcmp command. (default: 2 ULPs for IEEE 754 binary32)")
set(TEST_SUITE_FP_TOLERANCE_FP64_FAST_MATH 1.0e-14 CACHE STRING
    "Default relative tolerance for IEEE 754 binary64 (double-precision floating-point) fast-math arithmetic. This value is used by the fpcmp command when TEST_SUITE_FUJITSU_WITH_FAST_MATH is ON.")

# Set the default relative tolerance for the `fpcmp` command.
if(TEST_SUITE_FUJITSU_WITH_FAST_MATH)
  # If the value of the TEST_SUITE_FUJITSU_WITH_FAST_MATH variable is true,
  # relatively large tolerance.
  set(FP_TOLERANCE ${TEST_SUITE_FP_TOLERANCE_FP64_FAST_MATH})
else()
  # Otherwise, the default value for IEEE 754 binary64 (double-precision).
  set(FP_TOLERANCE ${TEST_SUITE_FP_TOLERANCE_FP64})
endif()

foreach(lang IN ITEMS C CXX Fortran)
  string(TOUPPER ${TEST_SUITE_FUJITSU_TEST_OPENMP} test_openmp)

  if(test_openmp STREQUAL "ONLY")
    set(TEST_SUITE_FUJITSU_ENABLE_${lang}_OPENMP ON)
    set(TEST_SUITE_FUJITSU_ENABLE_${lang}_NON_OPENMP OFF)
  elseif(${test_openmp} AND OpenMP_${lang}_FOUND)
    set(TEST_SUITE_FUJITSU_ENABLE_${lang}_OPENMP ON)
    set(TEST_SUITE_FUJITSU_ENABLE_${lang}_NON_OPENMP ON)
  else()
    set(TEST_SUITE_FUJITSU_ENABLE_${lang}_OPENMP OFF)
    set(TEST_SUITE_FUJITSU_ENABLE_${lang}_NON_OPENMP ON)
  endif()
endforeach()
unset(test_openmp)

# Most test programs in this test suite will be able to run on many
# platforms (OS/CPU). However, because it was originally developed
# for Fujitsu C/C++/Fortran compilers, which target Linux/AArch64,
# it may contain test programs which don't run on platforms other than
# Linux/AArch64.
if(LINUX OR TEST_SUITE_FUJITSU_FORCE_UNSUPPORTED_PLATFORM)
  if(ARCH STREQUAL "AArch64" OR TEST_SUITE_FUJITSU_FORCE_UNSUPPORTED_PLATFORM)
    foreach(lang ${TEST_SUITE_FUJITSU_TEST_LANG})
      if(lang STREQUAL "Fortran")
        if(TEST_SUITE_FORTRAN)
          # CMake supports LLVM Flang since 3.24.0 and supports
          # `.f03` and `.f08` filename suffixes since 3.27.0.
          cmake_minimum_required(VERSION 3.27.0)
        else()
          continue()
        endif()
      endif()
      add_subdirectory(${lang})
    endforeach()
    file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
  endif()
endif()
