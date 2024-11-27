#include <stdio.h>


#pragma omp declare simd simdlen(8) linear(y:1) notinbranch

int foo1(int *x, int y)
{
  return *x + y;
}

void init(int x[], int n)
{
  int i;
  for (i=0; i<n; i++) {
    x[i] = i;
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
  int a[100], r1[100], r2[100];
  int i;

  init(a, N);

  for (i=0; i<N; i++) {
    r1[i] = foo1(&a[i], i);
  }

#pragma omp simd linear(i) 
  for (i=0; i<N; i++) {
    r2[i] = foo1(&a[i], i);
  }

  check(r1, r2, N);
}
