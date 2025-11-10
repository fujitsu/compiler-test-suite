#include <stdio.h>

extern int foo(int, ...);

int main()
{
  int ret = foo(5, 1, 2, 3, 4, 5);
  if (ret == 15) { puts("OK"); }
  return 0;
}
