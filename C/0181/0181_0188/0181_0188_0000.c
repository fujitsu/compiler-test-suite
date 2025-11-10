#include <stdio.h>

extern int foo(int x);

int main()
{
  int ret = foo(1);
  printf("%d\n", ret);
  return 0;
}
