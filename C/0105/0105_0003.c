
#include <stdio.h>

int global = 5;

void bar(int z)
{
  volatile int a1 = z;
  printf("%d\n", 100);
}

void foo(int x)
{
  global = 4;
  bar(x);
}

int main()
{
  foo(100);
  if (global == 4) puts("OK");
  else             puts("NG");
  return 0;
}
