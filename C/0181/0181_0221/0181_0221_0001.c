#include <stdio.h>

__attribute__ ((noinline))
static int boo(int x, int y, int z)
{
  return x + y + z;
}

int foo(int x, int y)
{
  return boo(x, y, 3);
}
