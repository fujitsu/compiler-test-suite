
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

void init(double *b, int *c) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    c[i] = i;
    b[i] = (double)i * 2.0 ;
  }
}

void test(double * restrict a, double * restrict b, int * restrict c) {
  int i;
  for(i = 0;i < N;i++ ) {
    a[i] = b[c[i]];
  }
}

int MAINF() {
  double a[N], b[N];
  int c[N], i;

  init (b,c);
  test (a,b,c);

  for (i = 0;i < N;i++) {
    if (a[i] != b[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
