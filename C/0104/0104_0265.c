
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

double b[N];
static const double *p = b;

void init(int *c) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    c[i] = i;
    b[i] = (double)i * 2.0 ;
  }
}

void test(double * restrict a, int * restrict c) {
  int i;

  for(i = 0;i < N;i++ ) {
    a[i] = p[c[i]];
  }
}

int MAINF() {
  double a[N];
  int c[N];

  init (c);
  test (a,c);

  if (a[1] != b[1]) {
    PRINT_NG;
  }

  PRINT_OK;
  return 0;
}
