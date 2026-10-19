/*
 * FEATURE: C++23 Consistent character literal encoding
 * SPEC: P2316R2 Consistent character literal encoding
 * PURPOSE: Verify that character literals in preprocessing conditional
 *          expressions have the same values as character literals in
 *          ordinary C++ expressions.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror character_literal_encoding.cpp
 */

#if 'A' == '\x41'
constexpr bool pp_basic_character = true;
#else
constexpr bool pp_basic_character = false;
#endif

#if '\x41' == 0x41
constexpr bool pp_hex_character = true;
#else
constexpr bool pp_hex_character = false;
#endif

#if 'A' == 0x41
constexpr bool pp_character_value = true;
#else
constexpr bool pp_character_value = false;
#endif

static_assert(pp_basic_character == ('A' == '\x41'));
static_assert(pp_hex_character == ('\x41' == 0x41));
static_assert(pp_character_value == ('A' == 0x41));

int main()
{
    return 0;
}

