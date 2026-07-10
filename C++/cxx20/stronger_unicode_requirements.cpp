/*
FEATURE: Stronger Unicode requirements
SPEC: ISO/IEC 14882:2020 (C++20), [lex.charset], [lex.string], [lex.ccon]
PURPOSE: Verify stronger Unicode handling requirements, including UTF literal
         types, Unicode escape sequences, and code point consistency.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror stronger_unicode_requirements.cpp
*/

#include <cstddef>
#include <cstdint>
#include <string_view>
#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

int main() {
    int failures = EXIT_SUCCESS;

    // ---------------------------------------------------------------------
    // Test 1:
    // Verify UTF literal element types.
    // ---------------------------------------------------------------------
    {
        static_assert(std::is_same_v<decltype(u8'a'), char8_t>);
        static_assert(std::is_same_v<decltype(u'a'), char16_t>);
        static_assert(std::is_same_v<decltype(U'a'), char32_t>);
        static_assert(std::is_same_v<decltype(L'a'), wchar_t>);
    }

    // ---------------------------------------------------------------------
    // Test 2:
    // Verify UTF string literal array element types.
    // ---------------------------------------------------------------------
    {
        static_assert(
            std::is_same_v<
                std::remove_extent_t<
                  std::remove_reference_t<decltype(u8"abc")>>,
                const char8_t>);

        static_assert(
            std::is_same_v<
                std::remove_extent_t<
                    std::remove_reference_t<decltype(u"abc")>>,
                const char16_t>);

        static_assert(
            std::is_same_v<
                std::remove_extent_t<
                    std::remove_reference_t<decltype(U"abc")>>,
                const char32_t>);
    }

    // ---------------------------------------------------------------------
    // Test 3:
    // Verify Unicode escape sequences produce identical code points.
    // U+03A9 = GREEK CAPITAL LETTER OMEGA
    // ---------------------------------------------------------------------
    {
        constexpr char16_t c16 = u'\u03A9';
        constexpr char32_t c32 = U'\u03A9';

        static_assert(c16 == 0x03A9);
        static_assert(c32 == 0x03A9);

        if (c16 != c32) {
            ++failures;
        }
    }

    // ---------------------------------------------------------------------
    // Test 4:
    // Verify supplementary plane Unicode character.
    // U+1F600 = GRINNING FACE
    // ---------------------------------------------------------------------
    {
        constexpr char32_t emoji = U'\U0001F600';

        static_assert(emoji == 0x1F600);

        if (emoji != 0x1F600) {
            ++failures;
        }
    }

    // ---------------------------------------------------------------------
    // Test 5:
    // Verify UTF-8 encoding bytes for a Unicode character.
    // "Ω" (U+03A9) should encode as: CE A9
    // ---------------------------------------------------------------------
    {
        constexpr auto& s = u8"Ω";

        static_assert(sizeof(s) == 3); // 2 bytes + null terminator

        if (static_cast<unsigned char>(s[0]) != 0xCE ||
            static_cast<unsigned char>(s[1]) != 0xA9 ||
            s[2] != u8'\0') {
            ++failures;
        }
    }

    // ---------------------------------------------------------------------
    // Test 6:
    // Verify UTF-16 encoding for supplementary plane character.
    // U+1F600 => surrogate pair D83D DE00
    // ---------------------------------------------------------------------
    {
        constexpr auto& s = u"😀";

        static_assert(sizeof(s) / sizeof(char16_t) == 3);

        if (s[0] != 0xD83D ||
            s[1] != 0xDE00 ||
            s[2] != u'\0') {
            ++failures;
        }
    }

    // ---------------------------------------------------------------------
    // Test 7:
    // Verify UTF-32 stores the full code point directly.
    // ---------------------------------------------------------------------
    {
        constexpr auto& s = U"😀";

        static_assert(sizeof(s) / sizeof(char32_t) == 2);

        if (s[0] != 0x1F600 ||
            s[1] != U'\0') {
            ++failures;
        }
    }

    return failures;
}
