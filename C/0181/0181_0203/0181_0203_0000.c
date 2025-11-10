#include <stdio.h>

extern void foo() __attribute__ ((flatten));

int main()
{
  foo();
  return 0;
}
