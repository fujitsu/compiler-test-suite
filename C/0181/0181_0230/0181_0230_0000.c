#include <stdio.h>

extern int foo(const char *, ...) __attribute__ ((sentinel));

int main()
{
  int ret = foo("RetVal: ", NULL);
  printf("%d\n", ret);
  return 0;
}
