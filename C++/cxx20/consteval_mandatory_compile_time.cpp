/*
FEATURE: C++20 Immediate functions (consteval)
SPEC: P1073R3, C++20 §7.7 (constexpr specifiers)
PURPOSE: Verify that consteval functions are always evaluated at compile time
RUN: clang++ -std=c++20 -Wall -Wextra -Werror consteval_mandatory_compile_time.cpp
*/

#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// A consteval function must always be evaluated at compile time
consteval int square(int x) {
    return x * x;
}

// Test 1: Use in constant expression (must succeed)
constexpr int test_constexpr_usage() {
    return square(5); // OK: compile-time evaluation
}

// Test 2: Result must be usable in static_assert
static_assert(square(3) == 9, "consteval evaluation failed");

// Test 3: Use as template argument (requires compile-time constant)
template<int N>
struct ValueHolder {
    static constexpr int value = N;
};

using TestTemplate = ValueHolder<square(4)>;

// Test 4: Ensure the function really produces a constant expression
constexpr bool test_type() {
    return std::is_same_v<decltype(square(2)), int>;
}

int main() {
    int result = EXIT_SUCCESS;

    // Runtime check of constexpr-evaluated results
    if (test_constexpr_usage() != 25) {
        result = EXIT_FAILURE;
    }

    if (TestTemplate::value != 16) {
        result = EXIT_FAILURE;
    }

    if (!test_type()) {
        result = EXIT_FAILURE;
    }

    return result;
}
