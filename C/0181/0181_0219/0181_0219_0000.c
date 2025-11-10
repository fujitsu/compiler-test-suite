#include <stdio.h>

extern int foo(int, int) __attribute__ ((no_stack_limit));

int main()
{
  int ret = foo(1, 2);
  printf("%d\n", ret);
  return 0;
}
