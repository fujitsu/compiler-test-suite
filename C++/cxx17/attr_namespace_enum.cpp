/*
FEATURE: Attributes for namespaces and enumerators
SPEC: N4266 §7.6.1 [dcl.attr.grammar]
PURPOSE: Verify that C++17 allows applying attributes to namespaces and individual enumerators, 
         and that the compiler emits appropriate warnings for deprecated elements.
RUN: clang++ -std=c++17 -Wall -Wextra attr_namespace_enum.cpp
*/

#include <iostream>

// Apply an attribute to a namespace
namespace
[[deprecated("use new_namespace instead")]]
old_namespace {
    inline int get_value() { return 42; }
}

// Apply an attribute to an enumerator
enum class Color {
    Red,
    Green,
    Blue [[deprecated("Blue is deprecated")]]
};

int main() {
    int result = 0;

    // Accessing deprecated namespace should trigger a warning
    int val = old_namespace::get_value();
    if (val != 42)
        result = 1;

    // Using deprecated enumerator should trigger a warning
    Color c = Color::Blue;
    if (c != Color::Blue)
        result = 2;

    // Return 0 if all runtime checks are OK
    return result;
}
