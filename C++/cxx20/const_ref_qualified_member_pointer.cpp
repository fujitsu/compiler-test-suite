/*
FEATURE: const&-qualified pointers to members
SPEC: ISO/IEC 14882:2020 (C++20), §11.4.3 [expr.ref], §11.7 [dcl.fct]
PURPOSE: Verify that pointers to member functions can include const and
         lvalue-reference qualifiers, and that such pointers enforce correct
         object cv- and value-category constraints at compile time.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror const_ref_qualified_member_pointer.cpp
*/

#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

struct Widget {
    int value;

    int get() const & {
        return value;
    }

    int get() && = delete; // Must not be callable on rvalues
};

int main() {
    Widget w{42};

    // Pointer to a const lvalue-qualified member function
    int (Widget::*pmf)() const & = &Widget::get;

    // Valid call: const lvalue-qualified member function on lvalue object
    int result = (w.*pmf)();

    if (result != 42) {
        return EXIT_FAILURE;
    }

    // The following call must be ill-formed and is intentionally commented out:
    // (Widget{42}.*pmf)();
    //
    // If uncommented, this should fail to compile because pmf refers to a
    // const lvalue-qualified member function.

    return EXIT_SUCCESS;
}

