/*
FEATURE: constexpr lambda expressions
SPEC: N4659 §8.1.5 / P0170R1
PURPOSE: Verify that lambda expressions can be declared constexpr and evaluated at compile time.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror constexpr_lambda.cpp
*/

#include <cstdio>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

int main() {
    // A simple constexpr lambda returning the square of a number.
    constexpr auto square = [](int x) constexpr {
        return x * x;
    };

    // Use the constexpr lambda in a constexpr context.
    constexpr int result = square(10);

    // Validate compile-time result.
    static_assert(result == 100, "constexpr lambda evaluation failed");

    // Also confirm that run-time invocation works as expected.
    int runtime_value = square(100);
    if (runtime_value != 10000) {
        std::printf("Runtime check failed: %d\n", runtime_value);
        return EXIT_FAILURE;
    }

    // Success
    return EXIT_SUCCESS;
}

