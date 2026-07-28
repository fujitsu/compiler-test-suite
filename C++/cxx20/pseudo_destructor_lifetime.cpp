/*
FEATURE: Pseudo-destructors end object lifetimes
SPEC: P0593R6, C++20 [basic.life]
PURPOSE: Verify that a pseudo-destructor call ends the lifetime of an
         object and that a new object can be created in the same storage
         using placement new.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror pseudo_destructor_lifetime.cpp
*/

#include <new>
#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// Verify pseudo-destructor lifetime semantics using an int object.
static bool test_int_lifetime()
{
    using Integer = int;

    // Reserve storage suitable for an int object.
    alignas(Integer) unsigned char storage[sizeof(Integer)];

    // Construct the first int object in the storage.
    Integer* p =
        ::new (static_cast<void*>(storage)) Integer(123);

    // Confirm the initial value.
    if (*p != 123) {
        return false;
    }

    // End the lifetime of the int object via pseudo-destructor call.
    p->~Integer();

    // Construct a new int object in the same storage.
    p = ::new (static_cast<void*>(storage)) Integer(456);

    // Verify that the new object is usable.
    if (*p != 456) {
        return false;
    }

    // End the lifetime of the replacement object.
    p->~Integer();

    return true;
}

// Verify the same behavior through a typedef name.
static bool test_typedef_name()
{
    using Integer = int;

    // Reserve storage for an Integer object.
    alignas(Integer) unsigned char storage[sizeof(Integer)];

    // Construct an Integer object.
    Integer* p = ::new (static_cast<void*>(storage)) Integer(10);

    // End its lifetime via pseudo-destructor call.
    p->~Integer();

    // Reconstruct another Integer object in the same storage.
    p = ::new (static_cast<void*>(storage)) Integer(20);

    // Verify the new object's value.
    bool ok = (*p == 20);

    // End the replacement object's lifetime.
    p->~Integer();

    return ok;
}

// Execute all lifetime-related checks.
int main()
{
    // Verify pseudo-destructor lifetime termination for int.
    if (!test_int_lifetime()) {
        return EXIT_FAILURE;
    }

    // Verify pseudo-destructor lifetime termination using a typedef.
    if (!test_typedef_name()) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

