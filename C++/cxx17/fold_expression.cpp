/* FEATURE: Fold expressions

SPEC: C++17 Standard (N4659 §8.5.9 [expr.fold])
PURPOSE: Verify that C++17 fold expressions work correctly for unary and binary folds.
         This test checks different forms of fold expressions:
         - Unary right fold: (... op pack)
         - Unary left fold: (pack op ...)
         - Binary fold with an initial value: (init op ... op pack), (pack op ... op init)
         Each case validates that the expression expands and evaluates as expected.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror fold_expression.cpp
*/

#include <iostream>
#include <cassert>

// A template function using a fold expression to compute the sum of arguments
template <typename... Args>
constexpr auto sum_all(Args... args) {
    return (... + args); // Unary right fold
}

// A template function using a fold expression to compute the product of arguments
template <typename... Args>
constexpr auto product_all(Args... args) {
    return (args * ...); // Unary left fold
}

// A template function using a fold expression with an initial value (binary fold)
template <typename... Args>
constexpr auto add_with_init(int init, Args... args) {
    return (init + ... + args); // Binary left fold
}

// A template function using logical AND fold expression
template <typename... Args>
constexpr bool all_true(Args... args) {
    return (true && ... && args); // Unary right fold
}

// A template function using logical OR fold expression
template <typename... Args>
constexpr bool any_true(Args... args) {
    return (false || ... || args); // Unary right fold
}

int main() {
    // Test sum_all (unary right fold)
    static_assert(sum_all(1, 2, 3, 4) == 10, "sum_all failed");
    if (sum_all(1, 2, 3, 4) != 10) return 1;

    // Test product_all (unary left fold)
    static_assert(product_all(1, 2, 3, 4) == 24, "product_all failed");
    if (product_all(1, 2, 3, 4) != 24) return 2;

    // Test add_with_init (binary left fold)
    static_assert(add_with_init(10, 1, 2, 3) == 16, "add_with_init failed");
    if (add_with_init(10, 1, 2, 3) != 16) return 3;

    // Test all_true (logical AND fold)
    static_assert(all_true(true, true, true), "all_true failed");
    static_assert(!all_true(true, false, true), "all_true failed with false");
    if (!all_true(true, true, true)) return 4;
    if (all_true(true, false, true)) return 5;

    // Test any_true (logical OR fold)
    static_assert(any_true(false, false, true), "any_true failed");
    static_assert(!any_true(false, false, false), "any_true failed with all false");
    if (!any_true(false, false, true)) return 6;
    if (any_true(false, false, false)) return 7;

    return 0; // success
}
