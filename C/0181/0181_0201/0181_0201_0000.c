#include <stdio.h>

extern void foo() __attribute__ ((deprecated));

int main()
{
  foo();
  puts("OK");
  return 0;
}
