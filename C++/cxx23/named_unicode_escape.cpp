/*
 * FEATURE: C++23 P2071R2 "Named universal character escapes"
 * SPEC: P2071R2
 * PURPOSE: Verify that Unicode characters can be specified using named
 *          universal character escapes.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror named_unicode_escape.cpp
 */

#include <cassert>
#include <cstddef>
#include <cstdlib>

int main()
{
    const char32_t named = U'\N{LATIN CAPITAL LETTER A WITH MACRON}';
    const char32_t coded = U'\u0100';

    assert(named == coded);
    assert(named == U'\u0100');

    const char8_t named_string[] =
        u8"\N{LATIN CAPITAL LETTER A WITH MACRON}\N{COMBINING GRAVE ACCENT}";
    const char8_t coded_string[] = u8"\u0100\u0300";

    static_assert(sizeof(named_string) == sizeof(coded_string));

    for (std::size_t i = 0; i < sizeof(named_string); ++i)
        assert(named_string[i] == coded_string[i]);

    return EXIT_SUCCESS;
}

