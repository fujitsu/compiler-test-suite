/*
FEATURE: Allow duplicate attributes
SPEC: P2156R1
PURPOSE: Verify that duplicate standard attributes are accepted on declarations and statements.
RUN: clang++ -std=c++23 -Wall -Wextra -Werror duplicate_attributes.cpp
*/

#include <cstdlib>

// Verify duplicate attributes on a variable declaration.
[[maybe_unused]] [[maybe_unused]]
constexpr int duplicated_variable = 42;

// Verify duplicate attributes on a type declaration.
struct [[maybe_unused]] [[maybe_unused]] DuplicatedType
{
    int value;
};

// Verify duplicate attributes on a function declaration.
[[nodiscard]] [[nodiscard]]
constexpr int get_value()
{
    return duplicated_variable;
}

int main()
{
    // Verify duplicate attributes on an object declaration.
    [[maybe_unused]] [[maybe_unused]]
    DuplicatedType object{get_value()};

    // Verify duplicate attributes on a statement.
    if (object.value == duplicated_variable)
    {
        return EXIT_SUCCESS;
    }

    // Report failure if the verification condition is not satisfied.
    return EXIT_FAILURE;
}

