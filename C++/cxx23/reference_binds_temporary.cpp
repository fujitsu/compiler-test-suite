/*
 * FEATURE: C++23 Type trait to determine if a reference binds to a temporary
 * SPEC: P2255R2
 * PURPOSE: Verify the type traits that determine whether a reference binds
 *          to a temporary object.
 * NOTE: Clang does not yet support this C++23 feature.
 * RUN: g++ -std=c++23 -Wall -Wextra -Werror reference_binds_temporary.cpp
 */

#include <cstdlib>
#include <type_traits>

struct Base {};

struct Derived : Base {};

struct Convertible {
    operator Base() const
    {
        return {};
    }
};

int main()
{
    // Direct binding to a temporary object.
    static_assert(
        std::reference_constructs_from_temporary_v<const int&, int>);
    static_assert(
        std::reference_constructs_from_temporary_v<int&&, int>);

    // Binding an lvalue reference to an lvalue does not create a temporary.
    static_assert(
        !std::reference_constructs_from_temporary_v<int&, int&>);
    static_assert(
        !std::reference_constructs_from_temporary_v<const int&, int&>);

    // Binding a base-class reference to a derived temporary.
    static_assert(
        std::reference_constructs_from_temporary_v<const Base&, Derived>);
    static_assert(
        std::reference_constructs_from_temporary_v<Base&&, Derived>);

    // Copy-initialization involving a temporary created by conversion.
    static_assert(
        std::reference_converts_from_temporary_v<const Base&, Convertible>);

    // No temporary is required when binding to an existing Base object.
    static_assert(
        !std::reference_converts_from_temporary_v<const Base&, Base&>);

    return EXIT_SUCCESS;
}

