/*
FEATURE: C++20 Destroying operator delete
SPEC: P0722R3, [expr.delete]
PURPOSE: Verify that destroying operator delete is selected and is responsible
         for both destructor invocation and memory deallocation.
RUN: clang++ -std=c++20 -Wall -Wextra destroying_delete_basic.cpp
*/

#include <new>
#include <cstddef>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

struct Tracker {
    static bool destructor_called;
    static bool destroying_delete_called;

    int value;

    Tracker(int v) : value(v) {}

    ~Tracker() {
        // Mark that destructor is called
        destructor_called = true;
    }

    // Destroying operator delete (C++20)
    static void operator delete(Tracker* ptr, std::destroying_delete_t) noexcept {
        destroying_delete_called = true;

        // Explicitly call destructor (required responsibility)
        ptr->~Tracker();

        // Deallocate memory
        ::operator delete(ptr);
    }
};

bool Tracker::destructor_called = false;
bool Tracker::destroying_delete_called = false;

int main() {
    Tracker::destructor_called = false;
    Tracker::destroying_delete_called = false;

    // Allocate and delete object
    Tracker* obj = new Tracker(42);
    delete obj;

    // Verify that destroying operator delete was used
    if (!Tracker::destroying_delete_called) {
        return EXIT_FAILURE;
    }

    // Verify that destructor was called via destroying delete
    if (!Tracker::destructor_called) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
