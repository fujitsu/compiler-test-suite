
#include <stdio.h>

extern void foo(long long int *a);

double fptrans(long long int i)
{
  double f;
  long long int a[2000];
  f = (double)i;
  foo(a);
  return f;
}

void foo(long long int *a)
{
  volatile long long int x;
  x = 1LL;
  a[0] = x;
}

#define ANS  2.00000
#define PERMISSIBLE 0.00001
#define GET_ABS(a) (((a)>0) ? (a) : -(a))
int main(void)
{
  double f;
  f = 2.0;
  f = fptrans((long long int)f);
  if (GET_ABS(f-ANS)<=PERMISSIBLE) {
    printf("ok\n");
  } else {
    printf("ng: %lf\n", f);
  }
}


