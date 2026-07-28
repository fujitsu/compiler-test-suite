/*
FEATURE: Deprecate some problematic uses of volatile
SPEC: P1152R4, C++20 [depr.volatile.type]
PURPOSE: Verify that volatile objects remain usable in C++20 while
         avoiding operations that were deprecated by the standard.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror deprecated_volatile_operations.cpp
*/

#include <cstdint>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// Global volatile object.
// Simple reads and writes to volatile objects remain valid in C++20.
volatile std::int32_t g_value = 0;

static bool test_volatile_read_write()
{
    // Write a value directly to the volatile object.
    g_value = 123;

    // Obtain a pointer to the volatile object.
    volatile std::int32_t* ptr = &g_value;

    // Write through the volatile-qualified pointer.
    *ptr = 456;

    // Read the current value from the volatile object.
    std::int32_t value = g_value;

    // The test succeeds if the latest write is observable.
    return value == 456;
}

static bool test_volatile_pointer_access()
{
    // Local volatile object.
    volatile std::int32_t local = 10;

    // Pointer preserving the volatile qualification.
    volatile std::int32_t* ptr = &local;

    // Write a new value through the pointer.
    *ptr = 20;

    // Verify that the write can be observed through a read.
    return local == 20;
}

int main()
{
    // Verify read/write operations on a global volatile object.
    if (!test_volatile_read_write()) {
        return EXIT_FAILURE;
    }

    // Verify access through a pointer to a local volatile object.
    if (!test_volatile_pointer_access()) {
        return EXIT_FAILURE;
    }

    // All checks passed.
    return EXIT_SUCCESS;
}

