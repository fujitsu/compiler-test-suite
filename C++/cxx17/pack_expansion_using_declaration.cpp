/*
FEATURE: Pack expansions in using-declarations
SPEC: ISO/IEC 14882:2017 (C++17), N4659 §10.3 [namespace.udecl]
PURPOSE: Verify that parameter packs can be expanded inside using-declarations
         to bring multiple base class members into the derived class scope.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror pack_expansion_using_declaration.cpp
*/

#include <cstdlib>

// First base class providing a member function
struct BaseA {
    int value() const { return 1; }
};

// Second base class providing a member function with the same name
struct BaseB {
    int value() const { return 2; }
};

// Variadic template inheriting from multiple base classes
template <typename... Bases>
struct Derived : Bases... {
    // C++17 feature: pack expansion in using-declarations
    using Bases::value...;
};

int main()
{
    Derived<BaseA, BaseB> d;

    // Explicit qualification is required to select the correct base
    int a = d.BaseA::value();
    int b = d.BaseB::value();

    // Validate that both functions are correctly accessible
    if (a != 1) {
        return EXIT_FAILURE;
    }
    if (b != 2) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

