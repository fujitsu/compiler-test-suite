/*
FEATURE: Aggregate initialization of classes with base classes
SPEC: C++17 standard — aggregate initialization rules for classes with base classes (see C++17 draft / standard aggregate definition)
PURPOSE: Verify that a class deriving from a public non-virtual base with no user-provided constructors
         is treated as an aggregate under C++17 and can be initialized via aggregate initialization,
         including both braced base-subobject form and flat initializer-list form.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror -Wno-missing-braces aggregate_init_with_base.cpp
*/

#include <cmath>    // for std::fabs
#include <cstdint>  // for std::int32_t
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// Simple base and derived types that qualify as aggregates under C++17:
// - no user-provided constructors
// - no private or protected non-static data members
// - no virtual base classes
// - public (default for struct) inheritance
struct Base {
    int a;
    double b;
};

struct Derived : Base {
    int c;
};

// Another example with two base classes and an own member to show order-of-initialization behavior.
struct Left {
    int l;
};

struct Right {
    int r;
};

struct MultiDerived : Left, Right {
    int m;
};

// Helper for floating-point comparison
bool almost_equal(double x, double y, double eps = 1e-12) {
    return std::fabs(x - y) <= eps;
}

int main() {
    // 1) Initialize Derived by explicitly initializing the base subobject, then derived members.
    //    This form uses nested braces for the base subobject.
    Derived d1{ { 1, 2.5 }, 3 };

    if (d1.a != 1) return EXIT_FAILURE;
    if (!almost_equal(d1.b, 2.5)) return EXIT_FAILURE;
    if (d1.c != 3) return EXIT_FAILURE;

    // 2) Initialize Derived using a flat initializer-list (C++17 allows the base's members
    //    to be initialized in declaration order without explicit nested braces).
    Derived d2{ 10, 20.5, 30 };

    if (d2.a != 10) return EXIT_FAILURE;
    if (!almost_equal(d2.b, 20.5)) return EXIT_FAILURE;
    if (d2.c != 30) return EXIT_FAILURE;

    // 3) Multi-base example: initializer-list initializes base subobjects in declaration
    //    order (Left, then Right), then members of the most-derived class.
    MultiDerived m{ 7, 8, 9 }; // maps to Left::l = 7, Right::r = 8, MultiDerived::m = 9

    if (m.l != 7) return EXIT_FAILURE;
    if (m.r != 8) return EXIT_FAILURE;
    if (m.m != 9) return EXIT_FAILURE;

    // If all checks passed, return success (0).
    return EXIT_SUCCESS;
}

