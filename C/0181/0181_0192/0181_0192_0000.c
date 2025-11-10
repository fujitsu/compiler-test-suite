#include <stdio.h>

extern int foo(char c);

int main()
{
  int ret = foo('0');
  printf("%d\n", ret);
  return 0;
}
