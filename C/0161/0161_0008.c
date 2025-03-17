
#include <stdio.h>

extern void foo(int *a);

float fptrans(int i)
{
  int a[2000];
  float f;
  f = (float)i;
  foo(a);
  return f;
}

void foo(int *a)
{
  volatile int x;
  x = 1;
  a[0] = x;
}

#define ANS  2.00000
#define PERMISSIBLE 0.00001
#define GET_ABS(a) (((a)>0) ? (a) : -(a))
int main(void)
{
  float f;
  f = 2.0;
  f = fptrans((int)f);
  if (GET_ABS(f-ANS)<=PERMISSIBLE) {
    printf("ok\n");
  } else {
    printf("ng: %f\n", f);
  }
}


