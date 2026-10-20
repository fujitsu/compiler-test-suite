/*
 * FEATURE: C++23 Extend init-statement to allow alias-declaration
 * SPEC: P2360R0 Extend init-statement to allow alias-declaration
 * PURPOSE: Verify that type alias declarations can be used in initialization
 *          statements within `if`, `switch`, and `for` statements.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror init_statement_alias.cpp
 */

int main()
{
  // if statement
  if (using T = int; T value = 1)
  {
    if (value != 1)
      return 1;
  }
  else
  {
    return 2;
  }

  // switch statement
  switch (using T = int; T{2})
  {
  case 2:
    break;
  default:
    return 3;
  }

  // traditional for statement
  int count = 0;
  for (using T = int; count < T{3}; ++count)
  {
  }

  if (count != 3)
    return 4;

  // range-based for statement
  int sum = 0;
  int values[] = {1, 2, 3};

  for (using T = int; T value : values)
    sum += value;

  if (sum != 6)
    return 5;

  return 0;
}

