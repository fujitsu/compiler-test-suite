#include <stdio.h>

extern void foo(const char *);

int main()
{
  foo("zero-length array test");
  return 0;
}
