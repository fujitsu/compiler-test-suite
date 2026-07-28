/*
FEATURE: Nested inline namespaces
SPEC: C++20 [namespace.def] / P1094R2 (Nested inline namespace definition syntax)
PURPOSE: Verify that nested inline namespaces can be declared using the C++20
         compact syntax and that members are visible through enclosing namespaces.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror nested-inline-namespaces.cpp
*/

#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

namespace Library::inline ABI::inline Version1 {
    constexpr int value = 42;

    constexpr int get_value() {
        return value;
    }
}

namespace Outer {
    namespace Inner::inline Detail {
        constexpr int id = 7;
    }
}

int main() {
    // Test 1:
    // Members of nested inline namespaces must be reachable
    // from the outermost namespace.
    if (Library::value != 42) {
        return EXIT_FAILURE;
    }

    // Test 2:
    // Functions inside nested inline namespaces must also be
    // reachable without explicitly naming inner namespaces.
    if (Library::get_value() != 42) {
        return EXIT_FAILURE;
    }

    // Test 3:
    // Direct qualified access through explicit namespace names
    // must also work.
    if (Library::ABI::Version1::value != 42) {
        return EXIT_FAILURE;
    }

    // Test 4:
    // Verify the same syntax works when inline appears only
    // on an inner namespace.
    if (Outer::Inner::id != 7) {
        return EXIT_FAILURE;
    }

    // Test 5:
    // Explicit access to the inline inner namespace must remain valid.
    if (Outer::Inner::Detail::id != 7) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
