/*
FEATURE: Dynamic memory allocation for over-aligned data
SPEC: N4140 §3.7.4.1 / P0035R4
PURPOSE: Verify that dynamic allocation using `new` preserves alignment for over-aligned types.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror overaligned_allocation.cpp
*/

#include <new>
#include <cstddef>
#include <cstdint>
#include <iostream>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE
#define TEST_ALIGN 64
#define CHECK_VALUE 56

struct alignas(TEST_ALIGN) OverAlignedType {
    int value;
};

int main() {
    // Dynamically allocate an over-aligned object
    OverAlignedType* ptr = nullptr;

    try {
        ptr = new OverAlignedType{CHECK_VALUE};
    } catch (const std::bad_alloc&) {
        return EXIT_FAILURE; // Allocation failed → test failure
    }

    // Check the alignment
    std::uintptr_t addr = reinterpret_cast<std::uintptr_t>(ptr);
    if (addr % alignof(OverAlignedType) != 0) {
        delete ptr;
        return EXIT_FAILURE; // Misaligned allocation → test failure
    }

    // Check the stored value for sanity
    if (ptr->value != CHECK_VALUE) {
        delete ptr;
        return EXIT_FAILURE; // Value corrupted → unexpected failure
    }

    delete ptr;
    return EXIT_SUCCESS;
}

