/*
FEATURE: __has_include in preprocessor conditionals
SPEC: WG21 N4659 (C++17) - Preprocessing; use of the __has_include operator in #if/#elif conditionals
PURPOSE: Verify that the preprocessor accepts and evaluates __has_include in #if/#elif conditionals and that conditional inclusion/branching behaves as expected.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror has_include_preprocessor.cpp
*/

#include <iostream>

#define _FAIL 1

// Check for a header that should exist in a C++17 standard library.
#if __has_include(<optional>)
#  include <optional>
#  define HAS_OPTIONAL 1
#else
#  define HAS_OPTIONAL 0
#endif

// Check for a header that should *not* exist. Use an unlikely name to avoid false positives.
#if __has_include(<foo.h>)
#  define HAS_FOO 1
#else
#  define HAS_FOO 0
#endif

int main()
{
    // Expected: HAS_OPTIONAL == 1 (because <optional> is provided in C++17)
    //           HAS_FOO == 0 (<foo.h> header must not be found)

    if (HAS_OPTIONAL != 1) {
        std::cerr << "FAIL: expected <optional> to be found (HAS_OPTIONAL == 1), but it was not.\n";
        return _FAIL;
    }

    if (HAS_FOO != 0) {
        std::cerr << "FAIL: foo header was unexpectedly found (HAS_FOO == 1).\n";
        return _FAIL;
    }

    // If we reach here, the preprocessor conditional evaluation of __has_include behaved as expected.
    //std::cout << "PASS: __has_include evaluated in preprocessor conditionals as expected.\n";
    return 0;
}

