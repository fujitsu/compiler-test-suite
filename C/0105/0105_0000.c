#include <stdio.h>

int global = 5;

void foo(int i0, int i1, int i2, int i3, int i4, volatile int i5, volatile int i6)
{
  volatile int auto a1 = 1;
  i5 = 2;
  i6 = 3;
  global = 4;

  printf("%d %d %d\n", a1, i5, i6);
}
int main()
{
  foo(0,1,2,3,4,5,6);

  if (global == 4) puts("OK");
  else             puts("NG");
}

