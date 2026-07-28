/*
FEATURE: Default constructible and assignable stateless lambdas
SPEC: N4868 §7.5 [expr.prim.lambda] (Closure types, special member functions)
PURPOSE: Verify that capture-less (stateless) lambdas are default constructible
         and copy/move assignable in C++20, and that lambdas with captures
         are not default constructible.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror stateless_lambda_default_construct_and_assign.cpp
*/

#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

int main()
{
    // A capture-less (stateless) lambda
    using Stateless = decltype([](int x) { return x + 1; });

    // Must be default constructible in C++20
    static_assert(std::is_default_constructible_v<Stateless>,
                  "Stateless lambda should be default constructible");

    // Must be copy constructible
    static_assert(std::is_copy_constructible_v<Stateless>,
                  "Stateless lambda should be copy constructible");

    // Must be copy assignable
    static_assert(std::is_copy_assignable_v<Stateless>,
                  "Stateless lambda should be copy assignable");

    // Must be move assignable
    static_assert(std::is_move_assignable_v<Stateless>,
                  "Stateless lambda should be move assignable");

    // Runtime verification of default construction and assignment
    Stateless f1;        // default construction
    Stateless f2;        // default construction
    f2 = f1;             // copy assignment

    if (f1(10) != 11) return EXIT_FAILURE;
    if (f2(20) != 21) return EXIT_FAILURE;

    // A lambda with capture (stateful lambda)
    int value = 5;
    using Stateful = decltype([value](int x) { return x + value; });

    // Stateful lambda must NOT be default constructible
    static_assert(!std::is_default_constructible_v<Stateful>,
                  "Stateful lambda should not be default constructible");

    return EXIT_SUCCESS;
}

