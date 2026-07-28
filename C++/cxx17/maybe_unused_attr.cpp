/*
FEATURE: [[maybe_unused]] attribute
SPEC: C++17 standard, N4659 §10.6.8
PURPOSE: Verify that the [[maybe_unused]] attribute suppresses unused warnings for variables, functions, and parameters in Clang/LLVM.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror maybe_unused_attr.cpp
*/

#include <iostream>
#define _UNUSED_STATUS 123
#define _UNUSED_VALUE 42
#define _UNUSED_PARAM_VALUE 5
#define _UNUSED_VARIABLE_INIT 10

// A function marked as maybe_unused; may legitimately remain unused
[[maybe_unused]] 
int unused_function() {
    return _UNUSED_STATUS;
}

// A structure with a maybe_unused member
struct Example {
    [[maybe_unused]] int x = _UNUSED_STATUS;
};

// A function with a maybe_unused parameter
int process([[maybe_unused]] int param) {
    return 0;  // param intentionally unused
}

int main() {
    // A local variable that is intentionally unused
    [[maybe_unused]] int local_value = _UNUSED_VARIABLE_INIT;

    // If the program compiles (no unused warnings promoted to errors),
    // the feature is considered supported.
    Example e;         // e.x may be unused
    (void)e;           // Use e to avoid unrelated warnings

    // Call process (param unused inside)
    process(_UNUSED_PARAM_VALUE);

    // No runtime failures expected
    return EXIT_SUCCESS;
}

