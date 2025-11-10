#include <stdio.h>

extern int foo(int);

int main()
{
  (void)foo(1);
  int ret = foo(2);
  if (ret == 3) { puts("OK"); }
  return 0;
}
