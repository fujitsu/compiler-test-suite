/*
FEATURE: if consteval
SPEC: P1938R3
PURPOSE: Verify that if consteval and if ! consteval select the correct branches during constant evaluation and runtime evaluation.
RUN: clang++ -std=c++23 -Wall -Wextra -Werror if_consteval.cpp
*/

#include <cstdlib>

consteval int immediate_double(int value)
{
    return value * 2;
}

constexpr int select_evaluation_path(int value)
{
    // Verify if consteval selects the compile-time branch.
    if consteval {
        return immediate_double(value);
    } else {
        return value + 1;
    }
}

constexpr int select_inverted_path(int value)
{
    // Verify if ! consteval selects the runtime branch.
    if ! consteval {
        return value - 1;
    } else {
        return immediate_double(value);
    }
}

constexpr int select_without_else(int value)
{
    // Verify if consteval without else executes only during constant evaluation.
    if consteval {
        value += 100;
    }

    return value;
}

int main()
{
    // Verify compile-time selection with if consteval.
    constexpr int compile_time_result = select_evaluation_path(10);
    static_assert(compile_time_result == 20);

    // Verify compile-time selection with if ! consteval.
    constexpr int compile_time_inverted = select_inverted_path(20);
    static_assert(compile_time_inverted == 40);

    // Verify compile-time execution of if consteval without else.
    constexpr int compile_time_no_else = select_without_else(30);
    static_assert(compile_time_no_else == 130);

    // Verify runtime selection of the else branch.
    const int runtime_result = select_evaluation_path(10);
    if (runtime_result != 11) {
        return EXIT_FAILURE;
    }

    // Verify runtime selection of the if ! consteval branch.
    const int runtime_inverted = select_inverted_path(20);
    if (runtime_inverted != 19) {
        return EXIT_FAILURE;
    }

    // Verify runtime execution skips the if consteval block.
    const int runtime_no_else = select_without_else(30);
    if (runtime_no_else != 30) {
        return EXIT_FAILURE;
    }

    // Verify successful completion of all checks.
    return EXIT_SUCCESS;
}
