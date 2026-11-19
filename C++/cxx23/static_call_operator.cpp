/*
 * FEATURE: C++23 P1169R4 "static operator()"
 * SPEC: P1169R4
 * PURPOSE: Verify that the function call operator can be declared static and invoked correctly.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror static_call_operator.cpp
 */

#include <cassert>
#include <cstdlib>

struct Add {
  static constexpr int operator()(int lhs, int rhs) {
    return lhs + rhs;
  }
};

struct Multiply {
  static constexpr int operator()(int lhs, int rhs) {
    return lhs * rhs;
  }
};

int main() {
  // Verify that static operator() can be invoked using an object.
  Add add;
  assert(add(10, 20) == 30);

  // Verify that static operator() can be invoked without an object.
  assert(Add::operator()(10, 20) == 30);

  // Verify its use in a constant expression.
  constexpr int result = Multiply{}(6, 7);
  static_assert(result == 42);

  return EXIT_SUCCESS;
}
