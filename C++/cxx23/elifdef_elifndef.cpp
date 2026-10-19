/*
 * FEATURE: C++23 Preprocessing directives elifdef and elifndef
 * SPEC: P2334R1 Add support for preprocessing directives elifdef and elifndef
 * PURPOSE: Verify that #elifdef and #elifndef select the expected preprocessing
 *          branches depending on whether a macro is defined.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror elifdef_elifndef.cpp
 */

#include <cassert>
#include <cstdlib>

// #elifdef: the macro is defined.
#define ELIFDEF_DEFINED

constexpr int test_elifdef_defined()
{
#if defined(NEVER_DEFINED)
  return 0;
#elifdef ELIFDEF_DEFINED
  return 1;
#else
  return 0;
#endif
}

#undef ELIFDEF_DEFINED

// #elifdef: the macro is not defined.
constexpr int test_elifdef_undefined()
{
#if defined(NEVER_DEFINED)
  return 0;
#elifdef ELIFDEF_UNDEFINED
  return 0;
#else
  return 1;
#endif
}

// #elifndef: the macro is not defined.
constexpr int test_elifndef_undefined()
{
#if defined(NEVER_DEFINED)
  return 0;
#elifndef ELIFNDEF_UNDEFINED
  return 1;
#else
  return 0;
#endif
}

// #elifndef: the macro is defined.
#define ELIFNDEF_DEFINED

constexpr int test_elifndef_defined()
{
#if defined(NEVER_DEFINED)
  return 0;
#elifndef ELIFNDEF_DEFINED
  return 0;
#else
  return 1;
#endif
}

int main()
{
  assert(test_elifdef_defined() == 1);
  assert(test_elifdef_undefined() == 1);
  assert(test_elifndef_undefined() == 1);
  assert(test_elifndef_defined() == 1);

  return EXIT_SUCCESS;
}
