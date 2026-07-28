/*
FEATURE: u8 character literals
SPEC: ISO/IEC 14882:2017 §5.13.3 Character literals
PURPOSE: Verify that C++17 supports u8 character literals, which produce char type with UTF-8 encoding.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror u8_char_literals.cpp
*/

#include <iostream>
#include <cstdint>

int main() {
    // Declare a u8 character literal.
    // In C++17, a u8 character literal such as u8'x' has type 'char'.
    // This behavior changed in C++20 where it has type 'char8_t'.
    const auto c_u8_a = u8'a';
    auto c_u8_b = u8'b';

    // Test 1: Verify the type of u8'a' in C++17.
    // static_assert fails if the condition is false at compile time.
    static_assert(std::is_same_v<decltype(c_u8_a), const char>, "FAIL: u8'a' should be of type 'char' in C++17.");
    static_assert(std::is_same_v<decltype(c_u8_b), char>, "FAIL: u8'b' should be of type 'char' in C++17.");

    // Test 2: Verify the value of u8'a'.
    // The character 'a' has an ASCII value of 97.
    // We explicitly cast to int to avoid potential char sign-extension issues when printing.
    if (c_u8_a != 97) {
        std::cerr << "FAIL: u8'a' has unexpected value. Expected 97, got " << static_cast<int>(c_u8_a) << std::endl;
        return 1; // Indicate runtime failure
    }
    if (c_u8_b != 98) {
        std::cerr << "FAIL: u8'b' has unexpected value. Expected 98, got " << static_cast<int>(c_u8_b) << std::endl;
        return 1; // Indicate runtime failure
    }

    // If all compile-time and runtime checks pass, print success message and return 0.
    return 0; // Indicate success
}
