/*
FEATURE: Hexadecimal floating-point literals
SPEC: ISO/IEC 14882:2017 (C++17) §5.13.4 Floating literals
PURPOSE: Verify that hexadecimal floating-point literals are correctly parsed and evaluated by the compiler.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror hex_float_literal.cpp
*/

#include <cmath>
#include <limits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

bool nearly_equal(double a, double b, double epsilon = 1e-12)
{
    return std::fabs(a - b) < epsilon;
}

int main()
{
    // Basic hexadecimal floating-point literals
    double a = 0x1.0p+0;   // 1.0
    double b = 0x1.8p+1;   // 1.5 * 2 = 3.0
    double c = 0x1p-1;     // 0.5
    double d = 0xFp+0;     // 15.0

    if (!nearly_equal(a, 1.0)) return EXIT_FAILURE;
    if (!nearly_equal(b, 3.0)) return EXIT_FAILURE;
    if (!nearly_equal(c, 0.5)) return EXIT_FAILURE;
    if (!nearly_equal(d, 15.0)) return EXIT_FAILURE;

    // Test with fractional part
    double e = 0x1.999999999999ap-4; // Approximately 0.1
    if (!nearly_equal(e, 0.1)) return EXIT_FAILURE;

    // Test with float type
    float f = 0x1.0p+2f; // 4.0f
    if (!nearly_equal(f, 4.0f)) return EXIT_FAILURE;

    // Test with long double
    long double g = 0x1.0p+3L; // 8.0
    if (std::fabs(g - 8.0L) > std::numeric_limits<long double>::epsilon()) return EXIT_FAILURE;

    // All tests passed
    return EXIT_SUCCESS;
}

