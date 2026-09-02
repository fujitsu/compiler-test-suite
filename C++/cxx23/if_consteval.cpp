/*
FEATURE: if consteval
SPEC: P1938R3
PURPOSE: Verify that if consteval and if ! consteval select the correct branches during constant evaluation and runtime evaluation.
RUN: clang++ -std=c++23 -Wall -Wextra -Werror if_consteval.cpp
*/

#include <cstdlib>

// Immediate function used by consteval branches.
consteval int immediate_double(int value)
{
    return value * 2;
}

// Verify that if consteval selects different paths depending on evaluation context.
constexpr int select_evaluation_path(int value)
{
    if consteval {
        return immediate_double(value);
    } else {
        return value + 1;
    }
}

// Verify that if ! consteval inverts the compile-time/runtime selection.
constexpr int select_inverted_path(int value)
{
    if ! consteval {
        return value - 1;
    } else {
        return immediate_double(value);
    }
}

// Verify that if consteval without an else branch executes only during constant evaluation.
constexpr int select_without_else(int value)
{
    if consteval {
        value += 100;
    }

    return value;
}

int main()
{
    // Verify compile-time selection of the if consteval branch.
    constexpr int compile_time_result = select_evaluation_path(10);
    static_assert(compile_time_result == 20);

    // Verify compile-time selection of the else branch of if ! consteval.
    constexpr int compile_time_inverted = select_inverted_path(20);
    static_assert(compile_time_inverted == 40);

    // Verify compile-time execution of if consteval without an else branch.
    constexpr int compile_time_no_else = select_without_else(30);
    static_assert(compile_time_no_else == 130);

    // Verify runtime selection of the else branch of if consteval.
    int runtime_input1 = 10;
    const int runtime_result = select_evaluation_path(runtime_input1);
    if (runtime_result != 11) {
        return EXIT_FAILURE;
    }

    // Verify runtime selection of the if ! consteval branch.
    int runtime_input2 = 20;
    const int runtime_inverted = select_inverted_path(runtime_input2);
    if (runtime_inverted != 19) {
        return EXIT_FAILURE;
    }

    // Verify that the if consteval block is skipped during runtime evaluation.
    int runtime_input3 = 30;
    const int runtime_no_else = select_without_else(runtime_input3);
    if (runtime_no_else != 30) {
        return EXIT_FAILURE;
    }

    // All compile-time and runtime checks succeeded.
    return EXIT_SUCCESS;
}

