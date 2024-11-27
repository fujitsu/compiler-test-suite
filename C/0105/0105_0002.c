

#include <stdio.h>

int global = 5;

void bar()
{
  volatile int a1 = 100;
  printf("%d\n", 100);
}

void foo()
{
  global = 4;
  bar();
}

int main()
{
  foo();
  if (global == 4) puts("OK");
  else             puts("NG");
  return 0;
}
