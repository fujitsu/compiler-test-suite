/*
FEATURE: Trimming whitespaces before line splicing
SPEC: P2223R2
PURPOSE: Verify that whitespace characters between a backslash and the following newline are ignored during line splicing.
    NOTE:
    This test is not currently enabled in CMakeLists.txt because
    GCC and Clang emit warnings for backslash and newline
    separated by space under -Wall/-Wextra, causing failures
    when warnings are treated as errors.
RUN: clang++ -std=c++23 -Wall -Wextra -Werror trimming_whitespaces_before_line_splicing.cpp
*/

#include <cstdlib>

// Define a macro using line splicing with whitespace before
// the backslash and between the backslash and newline.
#define ADD_VALUES(a, b) ((a) + (b))     \    
                          + 1

// Define a string literal using line splicing with whitespace before
// the backslash and between the backslash and newline.
#define MESSAGE "Hello"      \    
                "World"

int main() {
  // Verify that line splicing works correctly in a macro definition.
  if (ADD_VALUES(10, 20) != 31) {
    return EXIT_FAILURE;
  }

  // Verify that adjacent string literals are combined after line splicing.
  constexpr const char *message = MESSAGE;
  if (message[0] != 'H' ||
      message[5] != 'W' ||
      message[10] != '\0') {
    return EXIT_FAILURE;
  }

  // Complete the test successfully.
  return EXIT_SUCCESS;
}
