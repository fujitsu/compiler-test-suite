/*
FEATURE: C++20 std::is_constant_evaluated
SPEC: P0595R2, C++20 <type_traits> §20.15
PURPOSE: Verify that std::is_constant_evaluated correctly distinguishes
         between constant evaluation and runtime evaluation, and that
         different code paths are selected accordingly.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror is_constant_evaluated_paths.cpp
*/

#include <type_traits>

// Test 1: constexpr context should return true
constexpr int compile_time_value() {
    if (std::is_constant_evaluated()) {
        return 100;
    } else {
        return -1; // should not be taken in constant evaluation
    }
}

// Test 2: runtime context should return false
int runtime_value() {
    if (std::is_constant_evaluated()) {
        return -1; // should not be taken at runtime
    } else {
        return 200;
    }
}

// Test 3: mixed behavior in constexpr function
constexpr int mixed(int x) {
    if (std::is_constant_evaluated()) {
        return x * x; // compile-time path
    } else {
        return x + x; // runtime path
    }
}

int main() {
    int result = 0;

    // Check Test 1 (compile-time evaluation)
    constexpr int ct = compile_time_value();
    if (ct != 100) {
        result |= 1;
    }

    // Check Test 2 (runtime evaluation)
    int rt = runtime_value();
    if (rt != 200) {
        result |= 2;
    }

    // Check Test 3 (compile-time path)
    constexpr int mixed_ct = mixed(3);
    if (mixed_ct != 9) {
        result |= 4;
    }

    // Check Test 3 (runtime path)
    int mixed_rt = mixed(3);
    if (mixed_rt != 6) {
        result |= 8;
    }

    return result; // 0 means success
}

