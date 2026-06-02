
#include <stdio.h>

#define N 10

extern void foo(long long int *a);

double vfptrans(long long int *a)
{
  int k;
  double f[N];
  long long int t[2000];

  foo(t);
  for (k=0; k<N; ++k) {
    if (a[k]>0) {
      f[k] = 2.0;
    }
  }
  return f[0];
}

void foo(long long int *a)
{
  volatile long long int x;
  x = 1;
  a[0] = x;
}

#define ANS  2.00000
#define PERMISSIBLE 0.00001
#define GET_ABS(a) (((a)>0) ? (a) : -(a))
int main(void)
{
  double x[N], f;
  int k;
  
  for (k=0; k<N; ++k) {
    x[k] = 1.0;
  }
  f = vfptrans((long long int *)x);
  if (GET_ABS(f-ANS)<=PERMISSIBLE) {
    printf("ok\n");
  } else {
    printf("ng: %f\n", f);
  }
}
