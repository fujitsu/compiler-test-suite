#include <stdio.h>

#if defined(__aarch64__)
#pragma omp declare simd simdlen(64)

__fp16 foo9(__fp16 x, __fp16 y)
{
  return x+y;
}

void init(__fp16 x[], __fp16 y[], int n)
{
  int i;
  for (i=0; i<n; i++) {
    x[i] = (__fp16)i;
    y[i] = (__fp16)(n-i);
  }
}

int check(__fp16 x[], __fp16 y[], int n)
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
  __fp16 a[100], b[100], r1[100], r2[100];
  int i;

  init(a, b, N);

  for (i=0; i<N; i++) {
    r1[i] = foo9(a[i], b[i]);
  }

#pragma omp simd simdlen(64)
  for (i=0; i<N; i++) {
    r2[i] = foo9(a[i], b[i]);
  }

  check(r1, r2, N);
}
#else
int main() {
    printf("ok\n");
    return 0;
}
#endif
