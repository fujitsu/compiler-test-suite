/*
FEATURE: Deprecate a[b,c]
SPEC: P1161R3, C++20 [depr.array.comparison] / deprecated comma expression in subscripting
PURPOSE: Verify that comma expressions inside subscripting are deprecated in C++20 and still evaluate correctly when explicitly parenthesized.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror deprecated_subscript_comma.cpp
*/

#include <cstddef>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

int main() {
    int values[5] = {10, 20, 30, 40, 50};

    int i = 1;
    int j = 3;

    // Explicitly parenthesized comma expression.
    // This is valid and should evaluate to values[3].
    int result1 = values[(i, j)];

    if (result1 != 40) {
        return EXIT_FAILURE;
    }

    // Verify side effects and evaluation order.
    int x = 0;
    int y = 2;

    int result2 = values[(++x, ++y)];

    // ++x makes x == 1
    // ++y makes y == 3
    // final subscript uses 3
    if (x != 1) {
        return EXIT_FAILURE;
    }

    if (y != 3) {
        return EXIT_FAILURE;
    }

    if (result2 != 40) {
        return EXIT_FAILURE;
    }

    // Confirm ordinary subscripting still works.
    if (values[4] != 50) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
