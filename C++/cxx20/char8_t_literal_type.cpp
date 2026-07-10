/*
FEATURE: C++20 char8_t (UTF-8 character type)
SPEC: P0482R6, C++20 [basic.fundamental], [lex.string]
PURPOSE: Verify that UTF-8 string literals have type const char8_t[],
         that char8_t is a distinct type from char/unsigned char,
         and that basic usage and conversions behave as specified.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror char8_t_literal_type.cpp
*/

#include <type_traits>
#include <cstddef>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

int main() {
    // Test 1: Type of UTF-8 string literal
    {
        auto s = u8"Hello";
        static_assert(std::is_same_v<decltype(s), const char8_t*>);
    }

    // Test 2: Type of UTF-8 character literal
    {
        auto c = u8'A';
        static_assert(std::is_same_v<decltype(c), char8_t>);
    }

    // Test 3: char8_t is distinct from char and unsigned char
    {
        static_assert(!std::is_same_v<char8_t, char>);
        static_assert(!std::is_same_v<char8_t, unsigned char>);
    }

    // Test 4: Array type of UTF-8 string literal
    {
        // using T = decltype(u8"Hi");
	using T = std::remove_reference_t<decltype(u8"Hi")>;
        static_assert(std::is_same_v<T, const char8_t[3]>); // 'H','i','\0'
    }

    // Test 5: Size and basic properties
    {
        static_assert(sizeof(char8_t) == 1);
        static_assert(std::is_integral_v<char8_t>);
        static_assert(std::is_unsigned_v<char8_t>);
    }

    // Test 6: No implicit conversion to const char*
    {
        const char8_t* p = u8"Test";
        (void)p;

        // The following should be ill-formed if uncommented:
        // const char* cp = u8"Test";
    }

    // Test 7: Explicit cast to const char*
    {
        const char8_t* p = u8"ABC";
        const char* cp = reinterpret_cast<const char*>(p);
        if (cp[0] != 'A') return EXIT_FAILURE;
    }

    // Test 8: Pointer arithmetic and indexing
    {
        const char8_t* p = u8"XYZ";
        if (p[0] != u8'X') return EXIT_FAILURE;
        if (p[1] != u8'Y') return EXIT_FAILURE;
        if (p[2] != u8'Z') return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

