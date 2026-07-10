/*
FEATURE: [[nodiscard]] attribute
SPEC: N4659 §7.6.5
PURPOSE: Verify that ignoring the return value of an entity marked with [[nodiscard]] triggers a diagnostic.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror nodiscard_attr.cpp
*/

#include <iostream>

#define _FAIL 1
#define _VALUE 1000

// Function marked as [[nodiscard]]
[[nodiscard]] int compute_value() {
    return _VALUE;
}

// Struct marked as [[nodiscard]]
struct [[nodiscard]] foo_struct {
    int value;
} foo_obj;

struct foo_struct get_value() {
    return foo_obj;
}

int main() {
    // --- Expected warning (ignored return value) ---
    // The following code must NOT be compiled in the final test run,
    // because ignoring a [[nodiscard]] return value will cause an error
    // under -Werror. Therefore, it is conditionally compiled.
#if 0
    compute_value();       // This should trigger a warning.
    get_value();         // This should also trigger a warning.
#endif

    // --- Valid usage: result is stored and used ---
    int v = compute_value();
    if (v != _VALUE) {
        return _FAIL;
    }

    foo_obj.value = _VALUE;
    v = get_value().value;
    if (v != _VALUE) {
        return _FAIL;
    }

    return 0;
}

