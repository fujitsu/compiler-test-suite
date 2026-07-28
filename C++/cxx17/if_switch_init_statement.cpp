/*
FEATURE: Separate variable and condition for if and switch
SPEC: ISO/IEC 14882:2017 (C++17) §8.5 [stmt.if], §8.6 [stmt.switch]
PURPOSE: Verify that if and switch statements can use a separate initialization statement
         followed by a condition, and that the initialized variables are scoped to the
         corresponding statements.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror if_switch_init_statement.cpp
*/

#include <cstdlib>
#include <cmath>    // for std::fabs

// Helper for floating-point comparison
bool almost_equal(double x, double y, double eps = 1e-12) {
    return std::fabs(x - y) <= eps;
}

int main()
{
    int result = 0;

    // Test 1: if statement with separate initialization and condition
    if (int value = 10; value == 10) {
        // Expected path
        result += 1;
    } else {
        // Should not be reached
        return EXIT_FAILURE;
    }
    if (double value = 10.5; almost_equal(value, 10.5)) {
        // Expected path
        result += 1;
    } else {
        // Should not be reached
        return EXIT_FAILURE;
    }

    // Test 2: switch statement with separate initialization and condition
    switch (int selector = 2; selector) {
    case 1:
        // Should not be reached
        return EXIT_FAILURE;
    case 2:
        // Expected path
        result += 1;
        break;
    default:
        // Should not be reached
        return EXIT_FAILURE;
    }

    // Both tests must succeed
    return (result == 3) ? EXIT_SUCCESS : EXIT_FAILURE;
}

