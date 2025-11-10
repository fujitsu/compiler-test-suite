#include <stdio.h>

extern int foo(void);

int main()
{
  int ret = foo();
  if (ret == 5) { puts("OK"); }
  return 0;
}
