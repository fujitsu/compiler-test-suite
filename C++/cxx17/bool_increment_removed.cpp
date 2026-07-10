/*
FEATURE: Remove deprecated bool increment
SPEC: N4296 §4.5; P0001R1
PURPOSE: Confirm that increment/decrement operators applied to bool are removed in C++17 and must produce a compile-time error.
RUN: clang++ -std=c++17 -Wall -Wextra bool_increment_removed.cpp
*/

// This program is a negative test. It is expected to fail to compile on a
// conforming C++17 compiler because incrementing a bool is removed in C++17.

bool test_bool_increment() {
    bool b = false;
    // The following line must produce a compile error in C++17.
    ++b; // expected-error: increment of bool is removed in C++17
    return b;
}

int main() {
    // This function would never be reached in a correct C++17 implementation
    // because the translation must fail before linking.
    int ret = 0; // A value other than 0 indicates that the test failed.
    if (test_bool_increment() == false) ret= 1;
    return ret;
}

