#include <stdio.h>

extern int foo(int, int) __attribute__ ((const));

int main()
{
  int ret = foo(3, 4);
  printf("%d\n", ret);
  return 0;
}
