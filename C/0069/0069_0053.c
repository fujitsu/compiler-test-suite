#include <stdio.h>


#pragma omp declare simd simdlen(8) linear(y:1) notinbranch

long foo1(long x, long y)
{
  return x + y;
}

void init(long x[], int n)
{
  long i;
  for (i=0; i<n; i++) {
    x[i] = i;
  }
}

int check(long x[], long y[], int n)
{
  int i;
  for (i=0; i<n; i++) {
    if (x[i] != y[i]) break; 
  }
  if (i != n) {
    printf("ng\n");
    return 1;
  } else {
    printf("ok\n");
  }
  return 0;
}

int main(void)
{
  const int N=100;
  long a[100], r1[100], r2[100];
  long i;

  init(a, N);

  for (i=0; i<N; i++) {
    r1[i] = foo1(a[i], i);
  }

#pragma omp simd linear(i) 
  for (i=0; i<N; i++) {
    r2[i] = foo1(a[i], i);
  }

  check(r1, r2, N);
}
