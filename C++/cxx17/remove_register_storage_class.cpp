/*
FEATURE: Remove deprecated register storage class
SPEC: ISO C++17, removal of the 'register' keyword (formerly deprecated)
PURPOSE: Verify that using the 'register' storage class specifier causes a compile-time error in C++17.
RUN: clang++ -std=c++17 -Wall -Wextra remove_register_storage_class.cpp
*/

int main() {
    // Using 'register' should be rejected in C++17.
    register int x = 0; // Expect compile error: 'register' is removed in C++17

    // If the compiler incorrectly accepts the code, return non-zero.
    return (x == 0) ? 1 : 1;
}

