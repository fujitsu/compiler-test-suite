#include <stdio.h>


#pragma omp declare simd 
#pragma omp declare simd simdlen(2) inbranch
#pragma omp declare simd simdlen(4) notinbranch
#pragma omp declare simd simdlen(8)
#pragma omp declare simd simdlen(16) inbranch
#pragma omp declare simd simdlen(32) notinbranch
#pragma omp declare simd simdlen(64)
#pragma omp declare simd simdlen(128) inbranch

int foo1(int x, int y)
{
  return x+y;
}

void init(int x[], int y[], int n)
{
  int i;
  for (i=0; i<n; i++) {
    x[i] = i;
    y[i] = n-i;
  }
}

int check(int x[], int y[], int n)
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
  int a[100], b[100], r1[100], r2[100];
  int i;

  init(a, b, N);

  for (i=0; i<N; i++) {
    r1[i] = foo1(a[i], b[i]);
  }

#pragma omp simd
  for (i=0; i<N; i++) {
    r2[i] = foo1(a[i], b[i]);
  }

  check(r1, r2, N);
}
