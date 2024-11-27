#include <stdio.h>


#pragma omp declare simd simdlen(16) inbranch

unsigned short int foo5(unsigned short int x, unsigned short int y)
{
  return x+y;
}

void init0(unsigned short int x[], int n)
{
  int i;
  for (i=0; i<n; i++) {
    x[i] = (unsigned short int)0;
  }
}

void init(unsigned short int x[], unsigned short int y[], int n)
{
  int i;
  for (i=0; i<n; i++) {
    x[i] = (unsigned short int)i;
    y[i] = (unsigned short int)(n-i);
  }
}

int check(unsigned short int x[], unsigned short int y[], int n)
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
  unsigned short int a[100], b[100], r1[100], r2[100];
  int i;

  init(a, b, N);
  init0(r1, N);
  init0(r2, N);
  for (i=0; i<N; i++) {
    if (i>10) {
      r1[i] = foo5(a[i], b[i]);
    }
  }

#pragma omp simd simdlen(16)
  for (i=0; i<N; i++) {
    if (i>10) {
      r2[i] = foo5(a[i], b[i]);
    }
  }

  check(r1, r2, N);
}
