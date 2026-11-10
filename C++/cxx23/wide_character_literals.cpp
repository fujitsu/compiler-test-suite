/*
 * FEATURE: C++23 P2362R3 "Remove non-encodable wide character literals and multicharacter wide character literals"
 * SPEC: P2362R3 
 * PURPOSE: Verify that valid single-character wide character literals are accepted and have the expected values.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror wide_character_literals.cpp
 */

#include <cstdlib>

int main()
{
    constexpr wchar_t lower_a = L'a';
    constexpr wchar_t upper_z = L'Z';
    constexpr wchar_t digit_5 = L'5';
    constexpr wchar_t newline = L'\n';

    if (lower_a != L'a')
        return EXIT_FAILURE;

    if (upper_z != L'Z')
        return EXIT_FAILURE;

    if (digit_5 != L'5')
        return EXIT_FAILURE;

    if (newline != L'\n')
        return EXIT_FAILURE;

    return EXIT_SUCCESS;
}
