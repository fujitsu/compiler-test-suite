
#include <stdio.h>

int global = 5;

long bar(int z)
{
  return (long)z+100;
}

long foo(int x)
{
  global = 4;
  return bar(x);
}

int main()
{
  foo(100);
  if (global == 4) puts("OK");
  else             puts("NG");
  return 0;
}
