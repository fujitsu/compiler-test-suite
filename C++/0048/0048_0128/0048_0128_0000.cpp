#include <stdio.h>

extern int foo(__const__ int val);

int main()
{
  int ret = foo(10);
  if (ret == 5) { puts("OK"); }
  return 0;
}
