#define N 10000

typedef double res_type;
typedef double arg_type;

res_type a[N] __attribute__ ((aligned (16)));
arg_type b[N] __attribute__ ((aligned (16)));

long double x[N] __attribute__ ((aligned (16)));
long double y[N] __attribute__ ((aligned (16)));

void foo(void)
{
  long i;
#pragma omp simd
  for(i=0;i<N;i++) {
    a[i] = b[i] + 3;
    x[i] = y[i] + 3;
  }
}

#include <stdio.h>
int main()
{
  long i;
  for(i=0;i<N;i++) {
    b[i] = i;
    y[i] = i;
  }
  foo();
  if (a[0] == 3 && a[N-1] == N+2) {
    puts("PASS");
  }
  else {
    printf("NG %d %d \n", (int )a[0], (int )a[N-1]);
  }
}
