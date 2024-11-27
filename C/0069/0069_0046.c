#include <stdio.h>


#pragma omp declare simd simdlen(64) notinbranch

_Bool foo14(_Bool x, _Bool y)
{
  return x|y;
}

void init(_Bool x[], _Bool y[], int n)
{
  int i;
  for (i=0; i<n; i++) {
    x[i] = (_Bool)1;
    y[i] = (_Bool)0;
  }
}

int check(_Bool x[], _Bool y[], int n)
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
  _Bool a[100], b[100], r1[100], r2[100];
  int i;

  init(a, b, N);

  for (i=0; i<N; i++) {
    r1[i] = foo14(a[i], b[i]);
  }

#pragma omp simd simdlen(64)
  for (i=0; i<N; i++) {
    r2[i] = foo14(a[i], b[i]);
  }

  check(r1, r2, N);
}
