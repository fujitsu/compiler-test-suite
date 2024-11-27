
#include <stdio.h>
#include <stdlib.h>
#include <complex.h>
#include <stdlib.h>

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

double test(double * restrict a, int * restrict c) {
  int i;
  double b[N];

  init(b, c);
  for(i = 0;i < N;i++ ) {
    a[i] = b[c[i]];
  }

  return b[1];
}

int MAINF() {
  double a[N], b;
  int c[N],i;

  b = test (a,c);

  for (i = 0;i < N;i++) {
    if (a[i] != (double)i * 2.0) {
      PRINT_NG;
    }
  }

  PRINT_OK;
  return 0;
}
