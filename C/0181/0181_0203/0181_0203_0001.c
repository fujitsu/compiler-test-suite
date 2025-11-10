#include <stdio.h>

static void sub()
{
  puts("OK");
}

__attribute__ ((flatten))
void foo()
{
  sub();
}
