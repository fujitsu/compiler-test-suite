/*
 * FEATURE: C++23 Non-literal variables (and labels and gotos) in constexpr functions
 * SPEC: P2242R3 Non-literal variables (and labels and gotos) in constexpr functions
 * PURPOSE: Verify that non-literal variables, labels, and goto statements are permitted in constexpr functions when not evaluated during constant evaluation.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror constexpr_nonliteral.cpp
 */

#include <cstdlib>
#include <type_traits>

struct NonLiteral {
    NonLiteral() {}
};

constexpr int test_constexpr(bool runtime_path) {
    if (!runtime_path) {
        return 42;
    }

    NonLiteral obj;

label:
    (void)obj;
    goto done;

    goto label;

done:
    return 1;
}

static_assert(test_constexpr(false) == 42);

int main() {
    return test_constexpr(true) == 1 ? EXIT_SUCCESS : EXIT_FAILURE;
}

