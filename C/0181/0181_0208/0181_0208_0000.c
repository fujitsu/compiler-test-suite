#include <stdio.h>

extern int foo(int, int);

int main()
{
  int ret = foo(3, 4);
  printf("%d\n", ret);
  return 0;
}
