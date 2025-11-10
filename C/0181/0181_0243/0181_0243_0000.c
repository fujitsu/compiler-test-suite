#include <stdio.h>

extern void foo(void);
extern int common_val __attribute__ ((common));
extern int nocommon_val __attribute__ ((nocommon));

int main()
{
  foo();
  if (common_val == 2 && nocommon_val ==3) { puts("OK"); }
  return 0;
}
