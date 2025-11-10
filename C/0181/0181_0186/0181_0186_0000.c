#include <stdio.h>

extern int foo(int) __attribute__ ((always_inline));

int main()
{
  int ret = foo(2);
  if (ret == 3) { puts("OK"); }
  return 0;
}
