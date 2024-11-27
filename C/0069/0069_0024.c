#include <stdio.h>


#pragma omp declare simd simdlen(32) inbranch

short int foo5(short int x, short int y)
{
  return x+y;
}

void init0(short int x[], int n)
{
  int i;
  for (i=0; i<n; i++) {
    x[i] = (short int)0;
  }
}

void init(short int x[], short int y[], int n)
{
  int i;
  for (i=0; i<n; i++) {
    x[i] = (short int)i;
    y[i] = (short int)(n-i);
  }
}

int check(short int x[], short int y[], int n)
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
  short int a[100], b[100], r1[100], r2[100];
  int i;

  init(a, b, N);
  init0(r1, N);
  init0(r2, N);
  for (i=0; i<N; i++) {
    if (i>10) {
      r1[i] = foo5(a[i], b[i]);
    }
  }

#pragma omp simd simdlen(32)
  for (i=0; i<N; i++) {
    if (i>10) {
      r2[i] = foo5(a[i], b[i]);
    }
  }

  check(r1, r2, N);
}
