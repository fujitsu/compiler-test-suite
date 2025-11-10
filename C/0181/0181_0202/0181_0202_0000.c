#include <stdio.h>

extern void foo() __attribute__ ((externally_visible));

int main()
{
  foo();
  return 0;
}
