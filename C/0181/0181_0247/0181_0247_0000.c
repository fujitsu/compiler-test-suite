#include <stdio.h>

extern int foo(int);

int main()
{
  int ret = foo(10);
  if (ret == 20) { puts("OK"); }
  return 0;
}
