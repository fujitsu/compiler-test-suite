/*
FEATURE: Permit conversions to arrays of unknown bound
SPEC: P0388R4, C++20 [conv.array]
PURPOSE: Verify that arrays with known bounds can be converted to
         pointers and references to arrays of unknown bound.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror array_unknown_bound_conversion.cpp
*/

#include <cstddef>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// Verify conversion from a known-bound array to a pointer
// to an array of unknown bound and validate element access.
bool test_pointer_conversion()
{
    int values[4] = {1, 2, 3, 4};

    int (*ptr)[] = &values;

    return (*ptr)[0] == 1 &&
           (*ptr)[1] == 2 &&
           (*ptr)[2] == 3 &&
           (*ptr)[3] == 4;
}

// Verify conversion from a known-bound array to a reference
// to an array of unknown bound and validate element access.
bool test_reference_conversion()
{
    int values[3] = {10, 20, 30};

    int (&ref)[] = values;

    return ref[0] == 10 &&
           ref[1] == 20 &&
           ref[2] == 30;
}

// Verify that cv-qualified arrays can also be converted
// to references of unknown bound arrays.
bool test_const_reference_conversion()
{
    const int values[2] = {7, 8};

    const int (&ref)[] = values;

    return ref[0] == 7 &&
           ref[1] == 8;
}

// Verify that modifications through an unknown-bound
// array reference affect the original array.
bool test_mutation_through_reference()
{
    int values[2] = {5, 6};

    int (&ref)[] = values;

    ref[0] = 100;
    ref[1] = 200;

    return values[0] == 100 &&
           values[1] == 200;
}

// Run all feature checks and report success/failure
// through the program exit status.
int main()
{
    if (!test_pointer_conversion())
    {
        return EXIT_FAILURE;
    }

    if (!test_reference_conversion())
    {
        return EXIT_FAILURE;
    }

    if (!test_const_reference_conversion())
    {
        return EXIT_FAILURE;
    }

    if (!test_mutation_through_reference())
    {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
