#include <stdio.h>

extern int foo(int) __attribute__ ((pure));

int main()
{
  int ret = foo(2);
  printf("%d\n", ret);
  return 0;
}
