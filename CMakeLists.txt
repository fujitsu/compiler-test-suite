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

# Wrapper of the llvm_singlesource function defined in the LLVM test-suite.
#
# The llvm_singlesource function, which is defined in the
# cmake/modules/SingleMultiSource.cmake file in the LLVM test-suite, cannot
# well handle per-test FP_TOLERANCE, FP_ABSTOLERANCE, and FP_IGNOREWHITESPACE
# settings, which control options for the `fpcmp` command.
#
# If the value of the TEST_SUITE_FUJITSU_WITH_FAST_MATH variable is true and
# the fastmath.cmake file exists in the current directory, this function
# reads the file and calls llvm_singlesource with per-test `FP_*` settings.
# Otherwise, this function simply calls llvm_singlesource.
#
# The fastmath.cmake file can set FP_TOLERANCE, FP_ABSTOLERANCE, or
# FP_IGNOREWHITESPACE settings for each test by prefixing the base name of
# the test and `-`. For example, if you want to set 1.0e-12 to FP_TOLERANCE
# for a test program 0123_4567.c, put `set(0123_4567-FP_TOLERANCE 1.0e-12)`.
#
# Arguments for this function is same as those for llvm_singlesource.
function(llvm_singlesource_fujitsu)
  if(NOT TEST_SUITE_FUJITSU_WITH_FAST_MATH OR
     NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/fastmath.cmake)
    llvm_singlesource(${ARGV})
    return()
  endif()

  # Read the fastmath.cmake file, which sets per-test `FP_*` settings.
  include(./fastmath.cmake)

  # Save the default `FP_*` values.
  set(fp_config_names FP_TOLERANCE FP_ABSTOLERANCE FP_IGNOREWHITESPACE)
  foreach(fp_config_name ${fp_config_names})
    set(default-${fp_config_name} ${${fp_config_name}})
  endforeach()

  # If the `Source` list variable is defined, use it as a set of source files
  # to compile and run. Same as llvm_singlesource.
  if(DEFINED Source)
    set(sources ${Source})
  else()
    file(GLOB sources
         *.c *.cpp *.cc
         *.for *.FOR *.fpp *.FPP *.[fF] *.[fF]90 *.[fF]95 *.[fF]03 *.[fF]08)
  endif()

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
endfunction()

# Set test programs in a directory as compile-only.
#
# Each source file in the specified directory is compiled into an executable
# but it is not run.
#
# This function should be called instead of llvm_singlesource_fujitsu in the
# per-directory CMakeLists.txt.
function(llvm_singlesource_compile_only_directory)
  # Optional `PREFIX` argument. Same as llvm_singlesource.
  cmake_parse_arguments(_LSARG "" "PREFIX" "" ${ARGN})
  # If the `Source` list variable is defined, compile only the specified
  # source files. If not, find C/C++/Fortran source files. Same as
  # llvm_singlesource.
  if(DEFINED Source)
    set(sources ${Source})
  else()
    file(GLOB sources
         *.c *.cpp *.cc
         *.for *.FOR *.fpp *.FPP *.[fF] *.[fF]90 *.[fF]95 *.[fF]03 *.[fF]08)
  endif()
  foreach(source ${sources})
    basename(name ${source})
    set(target ${_LSARG_PREFIX}${name})
    llvm_test_executable_no_test(${target} ${source})
  endforeach()
endfunction()

# Set a test program as compile-only.
#
# The specified source file is compiled into an executable but it is
# not run.
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
  if(DEFINED Source)
    set(sources ${Source})
  else()
    file(GLOB sources
         *.c *.cpp *.cc
         *.for *.FOR *.fpp *.FPP *.[fF] *.[fF]90 *.[fF]95 *.[fF]03 *.[fF]08)
  endif()
  foreach(source ${sources})
    get_filename_component(fname ${source} NAME)
    if(fname STREQUAL filename)
      basename(name ${source})
      set(target ${_LSARG_PREFIX}${name})
      llvm_test_executable_no_test(${target} ${source})
      list(REMOVE_ITEM sources "${source}")
    endif()
  endforeach()
  set(Source "${sources}" PARENT_SCOPE)
endfunction()

option(TEST_SUITE_FUJITSU_WITH_FAST_MATH
  "Enable special configurations for fast-math. If you use the -ffath-math compiler flag, this option should be set. Side effects by fast-math, like precision errors of floating-point arithmetic, can be absorbed."
  OFF)

option(TEST_SUITE_FUJITSU_FORCE_UNSUPPORTED_PLATFORM
  "Force to enable the Fujitsu Compiler Test Suite on unsupported platforms. Currently only Linux/AArch64 is supported."
  OFF)

# Set the default relative tolerance for the `fpcmp` command.
if(TEST_SUITE_FUJITSU_WITH_FAST_MATH)
  # If the value of the TEST_SUITE_FUJITSU_WITH_FAST_MATH variable is true,
  # relatively large tolerance.
  set(FP_TOLERANCE 1.0e-14)
else()
  # Otherwise, 2 ULPs for IEEE 754 binary64 (double-precision floating-point).
  set(FP_TOLERANCE 0x2.0p-52)
endif()

# Most test programs in this test suite will be able to run on many
# platforms (OS/CPU). However, because it was originally developed
# for Fujitsu C/C++/Fortran compilers, which target Linux/AArch64,
# it may contain test programs which don't run on platforms other than
# Linux/AArch64.
if(LINUX OR TEST_SUITE_FUJITSU_FORCE_UNSUPPORTED_PLATFORM)
  if(ARCH STREQUAL "AArch64" OR TEST_SUITE_FUJITSU_FORCE_UNSUPPORTED_PLATFORM)
    add_subdirectory(C)
    add_subdirectory(C++)
    if(TEST_SUITE_FORTRAN)
      # CMake supports LLVM Flang since 3.24.0 and supports `.f03` and `.f08`
      # filename suffixes since 3.27.0.
      cmake_minimum_required(VERSION 3.27.0)
      add_subdirectory(Fortran)
    endif()
    file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
  endif()
endif()
