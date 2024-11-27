#include <stdio.h>


#pragma omp declare simd simdlen(8) linear(val(x)) notinbranch

long foo2(long x, long *y)
{
  return x + *y;
}

void init(long x[], long y[], long n)
{
  long i;
  for (i=0L; i<n; i++) {
    x[i] = i;
    y[i] = n - i;
  }
}

int check(long x[], long y[], long n)
{
  long i;
  for (i=0L; i<n; i++) {
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
  const long N=100;
  long a[100], b[100], r1[100], r2[100];
  long *bp;
  long i;

  init(a, b, N);

  for (i=0L; i<N; i++) {
    r1[i] = foo2(a[i], &b[i]);
  }

  bp = b;
#pragma omp simd simdlen(8)
  for (i=0; i<N; i++) {
    r2[i] = foo2(a[i], bp++);
  }

  check(r1, r2, N);
}
