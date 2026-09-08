/*
FEATURE: Narrowing contextual conversions to bool
SPEC: P1401R5
PURPOSE: Verify that narrowing contextual conversions to bool are accepted in static_assert declarations and if constexpr statements.
RUN: clang++ -std=c++23 -Wall -Wextra -Werror contextual_bool_conversion.cpp
*/

#include <cstdlib>

// Test narrowing contextual conversions in if constexpr statements.
constexpr int test_if_constexpr() {
  // Test conversion of a nonzero integer other than one to true.
  if constexpr (2) {
    return 1;
  } else {
    return 0;
  }
}

// Test narrowing contextual conversions in static_assert declarations.
constexpr bool test_static_assert_context() {
  static_assert(2);

  return true;
}

int main() {
  // Verify that static_assert accepted the contextual conversion.
  static_assert(test_static_assert_context());

  // Verify the result of the if constexpr statement.
  if (test_if_constexpr() != 1) {
    return EXIT_FAILURE;
  }

  // Complete the test successfully.
  return EXIT_SUCCESS;
}

