#include <stdio.h>


#pragma omp declare simd simdlen(8) notinbranch

float _Complex foo7(float _Complex x, float _Complex y)
{
  return x+y;
}

void init(float _Complex x[], float _Complex y[], int n)
{
  int i;
  for (i=0; i<n; i++) {
    x[i] = (float)i;
    y[i] = (float)(n-i);
  }
}

int check(float _Complex x[], float _Complex y[], int n)
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
  float _Complex a[100], b[100], r1[100], r2[100];
  int i;

  init(a, b, N);

  for (i=0; i<N; i++) {
    r1[i] = foo7(a[i], b[i]);
  }

#pragma omp simd simdlen(8)
  for (i=0; i<N; i++) {
    r2[i] = foo7(a[i], b[i]);
  }

  check(r1, r2, N);
}
