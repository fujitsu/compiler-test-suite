#include <stdio.h>
#include <string.h>

#define TEST_STR  "variable length array test"

extern void foo(const int len, char arg[len]);

int main()
{
  char str[sizeof(TEST_STR)];
  foo(strlen(TEST_STR), str);
  puts(str);
  return 0;
}
