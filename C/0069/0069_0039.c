#include <stdio.h>


#pragma omp declare simd simdlen(16) notinbranch

unsigned int foo10(unsigned int x, unsigned int y)
{
  return x+y;
}

void init(unsigned int x[], unsigned int y[], int n)
{
  int i;
  for (i=0; i<n; i++) {
    x[i] = (unsigned int)i;
    y[i] = (unsigned int)(n-i);
  }
}

int check(unsigned int x[], unsigned int y[], int n)
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
  unsigned int a[100], b[100], r1[100], r2[100];
  int i;

  init(a, b, N);

  for (i=0; i<N; i++) {
    r1[i] = foo10(a[i], b[i]);
  }

#pragma omp simd simdlen(16)
  for (i=0; i<N; i++) {
    r2[i] = foo10(a[i], b[i]);
  }

  check(r1, r2, N);
}
