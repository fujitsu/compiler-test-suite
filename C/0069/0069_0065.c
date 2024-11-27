#include <stdio.h>


#pragma omp declare simd simdlen(16) linear(val(x):2) notinbranch

float foo3(float *x)
{
  return *x;
}

void init(float x[], int n)
{
  int i;
  for (i=0; i<n; i++) {
    x[i*2] = (float)(n - i);
    x[i*2+1] = x[i*2];
  }
}

int check(float x[], float y[], int n)
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
  float a[200], r1[100], r2[100];
  float *ap;
  int i;

  init(a, N);

  for (i=0; i<N; i++) {
    r1[i] = foo3(&a[2*i]);
  }

  ap = a;
#pragma omp simd simdlen(16)
  for (i=0; i<N; i++) {
    r2[i] = foo3(ap);
    ap+=2;
  }

  check(r1, r2, N);
}
