/*
 * FEATURE: C++23 P2290R3 "Delimited escape sequences"
 * SPEC: P2290R3
 * PURPOSE: Verify delimited escape sequences.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror delimited_escape_sequence.cpp
 */

#include <cstdlib>

int main()
{
    const char8_t unicode[] = u8"\u{1F600}";
    const char hexadecimal[] = "\x{41}";
    const char octal[] = "\o{101}";

    if (unicode[0] != u8'\xF0' ||
        unicode[1] != u8'\x9F' ||
        unicode[2] != u8'\x98' ||
        unicode[3] != u8'\x80' ||
        unicode[4] != u8'\0')
        return EXIT_FAILURE;

    if (hexadecimal[0] != 'A' || hexadecimal[1] != '\0')
        return EXIT_FAILURE;

    if (octal[0] != 'A' || octal[1] != '\0')
        return EXIT_FAILURE;

    return EXIT_SUCCESS;
}
