#include <stdio.h>


#pragma omp declare simd simdlen(64) inbranch

unsigned char foo6(unsigned char x, unsigned char y)
{
  return x+y;
}

void init0(unsigned char x[], int n)
{
  int i;
  for (i=0; i<n; i++) {
    x[i] = (unsigned char)0;
  }
}

void init(unsigned char x[], unsigned char y[], int n)
{
  int i;
  for (i=0; i<n; i++) {
    x[i] = (unsigned char)i;
    y[i] = (unsigned char)(n-i);
  }
}

int check(unsigned char x[], unsigned char y[], int n)
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
  unsigned char a[100], b[100], r1[100], r2[100];
  int i;

  init(a, b, N);
  init0(r1, N);
  init0(r2, N);
  for (i=0; i<N; i++) {
    if (i>10) {
      r1[i] = foo6(a[i], b[i]);
    }
  }

#pragma omp simd simdlen(64)
  for (i=0; i<N; i++) {
    if (i>10) {
      r2[i] = foo6(a[i], b[i]);
    }
  }

  check(r1, r2, N);
}
