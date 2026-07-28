/*
FEATURE: Using attribute namespaces without repetition
SPEC: N4266 §7 (C++17 attribute namespace grouping)
PURPOSE: Verify that the compiler correctly accepts the C++17 syntax
         `[[using ns: attr1, attr2]]` where an attribute namespace is
         specified once and reused for multiple attributes without repetition.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror attribute_namespace_using.cpp
*/

#include <iostream>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// Define a custom attribute namespace for testing
namespace vendor {
    // GNU-style attribute handling for testing; actual effect is irrelevant.
    // These do nothing but allow syntax checking.
#if defined(__clang__)
    // Using clang's vendor-specific attribute handling mechanism
    [[clang::syntax_only]] // No-op to ensure the namespace is recognized
    inline void dummy() {}
#endif
}

// Apply attributes using the C++17 grouping syntax
[[using vendor: unused]]
void func1() {
    // This function intentionally left blank
}

// Apply multiple attributes in the same namespace
[[using vendor: unused, unused]]
void func2() {
    // This function intentionally left blank
}

int main() {
    // The purpose of the test is strictly syntactic.
    // If the compiler accepts the grouped attribute syntax, this test passes.
    // If compilation fails, the test framework will treat it as a failure.

    func1();
    func2();

    return EXIT_SUCCESS;
}

