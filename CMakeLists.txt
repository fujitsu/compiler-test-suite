# Put Fortran module files in separate directories.
#
# Several Fortran tests build modules with the same name at build-time.
# To avoid module filename conflict, this function forces module files
# to be put in per-executable directories.
#
# This function should be called after llvm_singlesource in the per-
# directory CMakeLists.txt. This has effect for all executables added
# by llvm_singlesource.
#
# This feature may be integrated to the llvm_singlesource function once
# the Fujitsu Compiler Test Suite is integrated to the LLVM test-suite.
function(llvm_set_own_fortran_module_directory)
  get_directory_property(targets BUILDSYSTEM_TARGETS)
  foreach(target ${targets})
    set_target_properties(${target} PROPERTIES Fortran_MODULE_DIRECTORY "${target}.d")
  endforeach()
endfunction()

# Set test programs in a directory as compile-only.
#
# Each source file in the specified directory is compiled into an executable
# but it is not run.
#
# This function should be called instead of llvm_singlesource in the per-
# directory CMakeLists.txt.
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
# This function should be called before llvm_singlesource in the per-
# directory CMakeLists.txt because this function sets `Source` variable
# and which is used in llvm_singlesource.
function(llvm_singlesource_compile_only_file filename)
  # Optional `PREFIX` argument. Same as llvm_singlesource.
  cmake_parse_arguments(_LSARG "" "PREFIX" "" ${ARGN})
  # If the `Source` list variable is defined, llvm_singlesource will use
  # it as a set of source files to compile and run. If it is defined,
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

option(TEST_SUITE_FUJITSU_FORCE_UNSUPPORTED_PLATFORM
  "Force to enable the Fujitsu Compiler Test Suite on unsupported platforms. Currently only Linux/AArch64 is supported."
  OFF)

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
