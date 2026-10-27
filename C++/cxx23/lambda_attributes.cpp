/*
 * FEATURE: C++23 Attributes on Lambda-Expressions
 * SPEC: P2173R1
 * PURPOSE: Verify that attributes can be specified on lambda expressions and are accepted correctly.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror lambda_attributes.cpp
 */

#include <cstdlib>

int main()
{
  // Attribute after the lambda introducer.
  auto add = [] [[nodiscard]] (int lhs, int rhs) {
    return lhs + rhs;
  };

  if (add(2, 3) != 5)
    return 1;

  // Verify that an attributed lambda can capture an object.
  int value = 10;
  auto add_value = [value] [[nodiscard]] (int n) {
    return value + n;
  };

  if (add_value(5) != 15)
    return 2;

  // Attribute on a generic lambda.
  auto identity = [] <typename T> [[nodiscard]] (T value) {
    return value;
  };

  if (identity(42) != 42)
    return 3;

  return EXIT_SUCCESS;
}
