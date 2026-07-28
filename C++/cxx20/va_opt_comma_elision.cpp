/*
FEATURE: C++20 "__VA_OPT__ for preprocessor comma elision"
SPEC: N4868 §16.3.1 [cpp.replace]
PURPOSE: Verify that __VA_OPT__ conditionally expands a comma
         without using nested macros.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror va_opt_comma_elision.cpp
*/

#include <cstddef>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

/*
 * Single variadic macro without nesting.
 * The comma appears only if __VA_ARGS__ is non-empty.
 */
#define INIT_LIST(x, ...) { x __VA_OPT__(,) __VA_ARGS__ }

int main()
{
    // No variadic arguments:
    // Expected expansion: { 1 }
    int a[] = INIT_LIST(1);

    // Variadic arguments present:
    // Expected expansion: { 1, 2, 3 }
    int b[] = INIT_LIST(1, 2, 3);

    if (sizeof(a) / sizeof(a[0]) != 1) {
        return EXIT_FAILURE;
    }

    if (sizeof(b) / sizeof(b[0]) != 3) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

