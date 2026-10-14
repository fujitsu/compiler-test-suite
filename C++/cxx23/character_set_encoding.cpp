/*
 * FEATURE: C++23 Character sets and encodings
 * SPEC: P2314R4 Character sets and encodings
 * PURPOSE: Verify that characters written directly and with universal-character-names
 *          are handled equivalently during preprocessing and stringizing.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror character_set_encoding.cpp
 */

#include <cassert>
#include <cstring>
#include <cstdlib>

#define STRINGIZE_IMPL(x) #x
#define STRINGIZE(x) STRINGIZE_IMPL(x)

int main()
{
  // A character written directly and the same character expressed by a
  // universal-character-name denote the same identifier.
  int café = 42;

  assert(café == 42);
  assert(caf\u00e9 == 42);

  // Stringizing preserves the character represented by a
  // universal-character-name rather than producing its escaped spelling.
  const char *direct = STRINGIZE(café);
  const char *ucn = STRINGIZE(caf\u00e9);

  assert(std::strcmp(direct, ucn) == 0);

  return EXIT_SUCCESS;
}
