/*
FEATURE: Pack expansion in lambda init-capture
SPEC: P0780R2 (C++20) §expr.prim.lambda.capture
PURPOSE: Verify that pack expansion can be used in lambda init-capture and that
         each element of a parameter pack is correctly captured and used,
         including cases with mixed types.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror lambda-init-capture-pack-expansion.cpp
*/

#include <tuple>
#include <utility>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// Helper to sum values stored in a tuple
template <typename Tuple, std::size_t... I>
int sum_tuple_impl(const Tuple& t, std::index_sequence<I...>) {
    return (0 + ... + static_cast<int>(std::get<I>(t)));
}

template <typename... Ts>
int sum_tuple(const std::tuple<Ts...>& t) {
    return sum_tuple_impl(t, std::index_sequence_for<Ts...>{});
}

// Test 1: Basic pack expansion in init-capture
template <typename... Ts>
int test_basic(Ts... xs) {
    auto lambda = [...vals = xs]() {
        return (0 + ... + vals);
    };
    return lambda();
}

// Test 2: Capture with transformation (init expression)
template <typename... Ts>
int test_transform(Ts... xs) {
    auto lambda = [...vals = (xs * 2)]() {
        return (0 + ... + vals);
    };
    return lambda();
}

// Test 3: Store captured pack into tuple
template <typename... Ts>
int test_tuple(Ts... xs) {
    auto lambda = [...vals = xs]() {
        auto t = std::make_tuple(vals...);
        return sum_tuple(t);
    };
    return lambda();
}

// Test 4: Mixed-type pack (int + char + short)
template <typename... Ts>
int test_mixed_types(Ts... xs) {
    auto lambda = [...vals = xs]() {
        return (0 + ... + static_cast<int>(vals));
    };
    return lambda();
}

int main() {
    // Basic
    if (test_basic(1, 2, 3, 4) != 10) return EXIT_FAILURE;

    // Transformation
    if (test_transform(1, 2, 3) != 12) return EXIT_FAILURE;

    // Tuple storage
    if (test_tuple(5, 6, 7) != 18) return EXIT_FAILURE;

    // Mixed types
    if (test_mixed_types(1, 'a', static_cast<short>(2)) != 100) return EXIT_FAILURE;

    return EXIT_SUCCESS;
}
