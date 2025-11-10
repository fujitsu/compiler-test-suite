#include <stdio.h>

extern int foo(void);

int main()
{
  int ret = foo();
  if (ret == 21) { puts("OK"); }
  return 0;
}
