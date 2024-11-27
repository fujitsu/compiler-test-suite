#include <stdio.h>


#pragma omp declare simd simdlen(16) notinbranch

double foo4(double x, double y)
{
  return x+y;
}

void init(double x[], double y[], int n)
{
  int i;
  for (i=0; i<n; i++) {
    x[i] = (double)i;
    y[i] = (double)(n-i);
  }
}

int check(double x[], double y[], int n)
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
  double a[100], b[100], r1[100], r2[100];
  int i;

  init(a, b, N);

  for (i=0; i<N; i++) {
    r1[i] = foo4(a[i], b[i]);
  }

#pragma omp simd simdlen(16)
  for (i=0; i<N; i++) {
    r2[i] = foo4(a[i], b[i]);
  }

  check(r1, r2, N);
}
