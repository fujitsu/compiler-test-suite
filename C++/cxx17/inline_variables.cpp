/*
FEATURE: Inline variables
SPEC: ISO/IEC 14882:2017 (C++17) §10.1.6 [dcl.inline]
PURPOSE: Verify that inline variables can be defined in headers (or multiple
         translation units conceptually) without violating the One Definition
         Rule, and that inline static data members can be defined and initialized
         inside a class definition.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror inline_variables.cpp
*/

#include <cstddef>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

#include "inline_variables.hpp"

int main()
{
    // Access and modify the inline namespace-scope variable.
    if (global_counter != 42) {
        return EXIT_FAILURE;
    }
    global_counter += 1;
    if (global_counter != 43) {
        return EXIT_FAILURE;
    }

    // Access the inline static data member.
    if (TestClass::static_value != 100) {
        return EXIT_FAILURE;
    }
    TestClass::static_value = 200;
    if (TestClass::static_value != 200) {
        return EXIT_FAILURE;
    }

    // Use the inline constexpr variable in a context requiring a constant expression.
    int array[array_size] = {0, 1, 2, 3};
    if (array[3] != 3) {
        return EXIT_FAILURE;
    }

    // All checks passed.
    return EXIT_SUCCESS;
}
