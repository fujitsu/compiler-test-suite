/*
 * FEATURE: C++23 Mixed string literal concatenation
 * SPEC: P2201R1 Mixed string literal concatenation
 * PURPOSE: Verify that string literal concatenation with the same encoding prefix or with one ordinary string literal and one prefixed string literal is well-formed in C++23.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror mixed_string_literal_concat.cpp
 */

#include <cstdlib>
#include <string_view>
#include <type_traits>

int main()
{
    // Verify ordinary string literal concatenation.
    constexpr auto s1 = "Hello, " "World!";
    static_assert(std::string_view{s1} == "Hello, World!");

    // Verify concatenation of an ordinary string literal and a UTF-8 string literal.
    constexpr auto s2 = u8"UTF-8: " "text";
    static_assert(std::is_same_v<decltype(s2), const char8_t*>);

    // Verify concatenation of an ordinary string literal and a UTF-16 string literal.
    constexpr auto s3 = u"UTF-16: " "text";
    static_assert(std::is_same_v<decltype(s3), const char16_t*>);

    // Verify concatenation of an ordinary string literal and a UTF-32 string literal.
    constexpr auto s4 = U"UTF-32: " "text";
    static_assert(std::is_same_v<decltype(s4), const char32_t*>);

    // Verify concatenation of an ordinary string literal and a wide string literal.
    constexpr auto s5 = L"Wide: " "text";
    static_assert(std::is_same_v<decltype(s5), const wchar_t*>);

    // Suppress unused variable warnings.
    (void)s1;
    (void)s2;
    (void)s3;
    (void)s4;
    (void)s5;

    return EXIT_SUCCESS;
}

