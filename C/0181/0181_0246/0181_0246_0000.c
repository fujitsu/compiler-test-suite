#include <stdio.h>

extern int val __attribute__((weak));
extern int foo(int);

int main()
{
  printf("%d\n", foo(3));
  return 0;
}
