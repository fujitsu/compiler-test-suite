/*
FEATURE: C++20 [[likely]] and [[unlikely]] attributes
SPEC: P0479R5, C++20 standard (stmt.if, stmt.switch)
PURPOSE: Extended verification of [[likely]] and [[unlikely]] attributes
         across multiple control-flow contexts including constexpr if,
         template instantiation, goto-based control flow, loops,
         nested branches, and interaction with [[fallthrough]].
RUN: clang++ -std=c++20 -Wall -Wextra -Werror likely_unlikely_attributes.cpp
*/

#include <cstddef>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// ------------------------------------------------------------
// Basic if with [[likely]]
// ------------------------------------------------------------
int test_if_likely(int x) {
    if (x == 1) [[likely]] {
        return 10;
    } else {
        return 20;
    }
}

// ------------------------------------------------------------
// else [[likely]]
// ------------------------------------------------------------
int test_else_likely(int x) {
    if (x == 0) {
        return 30;
    } else [[likely]] {
        return 40;
    }
}

// ------------------------------------------------------------
// [[unlikely]]
// ------------------------------------------------------------
int test_if_unlikely(int x) {
    if (x == 0) [[unlikely]] {
        return 50;
    }
    return 60;
}

// ------------------------------------------------------------
// Branch inside a loop
// ------------------------------------------------------------
int test_loop_branch() {
    int sum = 0;

    for (int i = 0; i < 5; ++i) {
        if (i == 4) [[unlikely]] {
            sum += 100;
        } else [[likely]] {
            sum += 1;
        }
    }
    return sum;
}

// ------------------------------------------------------------
// Nested branches
// ------------------------------------------------------------
int test_nested_branch(int x, int y) {
    if (x > 0) [[likely]] {
        if (y > 0) [[likely]] {
            return 70;
        } else [[unlikely]] {
            return 71;
        }
    } else {
        return 72;
    }
}

// ------------------------------------------------------------
// switch with [[likely]] and [[fallthrough]]
// ------------------------------------------------------------
int test_switch_fallthrough(int x) {
    int result = 0;

    switch (x) {
        case 1:
            result += 1;
            [[fallthrough]];

        case 2:
            [[likely]];
            result += 2;
            break;

        case 3:
            [[unlikely]];
            result += 3;
            break;

        default:
            result += 4;
            break;
    }
    return result;
}

// ------------------------------------------------------------
// switch default label with [[likely]]
// ------------------------------------------------------------
int test_switch_default_likely(int x) {
    int result = 0;

    switch (x) {
        case 1:
            result += 1;
            break;

        default:
            [[likely]];
            result += 10;
            break;
    }
    return result;
}

// ------------------------------------------------------------
// switch default label with [[unlikely]]
// ------------------------------------------------------------
int test_switch_default_unlikely(int x) {
    int result = 0;

    switch (x) {
        case 1:
            result += 1;
            break;

        default:
            [[unlikely]];
            result += 20;
            break;
    }
    return result;
}

// ------------------------------------------------------------
// constexpr if with [[likely]]
// ------------------------------------------------------------
template <typename T>
int test_constexpr_if() {
    if constexpr (sizeof(T) == 4) {
        if (true) [[likely]] {
            return 80;
        }
    } else {
        if (true) [[unlikely]] {
            return 81;
        }
    }
    return 82;
}

// ------------------------------------------------------------
// goto-based control flow
// ------------------------------------------------------------
int test_goto(int x) {
    if (x == 0) [[unlikely]] {
        goto slow_path;
    }
    return 90;

  slow_path:
    return 91;
}

// ------------------------------------------------------------
// Template function using attributes
// ------------------------------------------------------------
template <typename T>
int test_template_branch(T value) {
    if (value > 0) [[likely]] {
        return 100;
    } else [[unlikely]] {
        return 101;
    }
}

int main() {
    // Basic likely
    if (test_if_likely(1) != 10) return EXIT_FAILURE;
    if (test_if_likely(2) != 20) return EXIT_FAILURE;

    // else likely
    if (test_else_likely(0) != 30) return EXIT_FAILURE;
    if (test_else_likely(5) != 40) return EXIT_FAILURE;

    // unlikely
    if (test_if_unlikely(0) != 50) return EXIT_FAILURE;
    if (test_if_unlikely(1) != 60) return EXIT_FAILURE;

    // loop branch
    if (test_loop_branch() != 104) return EXIT_FAILURE;

    // nested branch
    if (test_nested_branch(1, 1) != 70) return EXIT_FAILURE;
    if (test_nested_branch(1, -1) != 71) return EXIT_FAILURE;
    if (test_nested_branch(-1, 0) != 72) return EXIT_FAILURE;

    // switch + fallthrough
    if (test_switch_fallthrough(1) != 3) return EXIT_FAILURE;
    if (test_switch_fallthrough(2) != 2) return EXIT_FAILURE;
    if (test_switch_fallthrough(3) != 3) return EXIT_FAILURE;
    if (test_switch_fallthrough(9) != 4) return EXIT_FAILURE;

    // switch default label
    if (test_switch_default_likely(100) != 10) return EXIT_FAILURE;
    if (test_switch_default_unlikely(200) != 20) return EXIT_FAILURE;
    
    // constexpr if
    if (test_constexpr_if<int>() != 80) return EXIT_FAILURE;
    if (test_constexpr_if<long long>() != 81) return EXIT_FAILURE;

    // goto
    if (test_goto(1) != 90) return EXIT_FAILURE;
    if (test_goto(0) != 91) return EXIT_FAILURE;

    // template branch
    if (test_template_branch(5) != 100) return EXIT_FAILURE;
    if (test_template_branch(-1) != 101) return EXIT_FAILURE;

    return EXIT_SUCCESS;
}

