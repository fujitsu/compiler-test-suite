#include <stdio.h>
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

#define CONST_DISTANCE 5

void init(double * a, double *b, double *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = 0.0;
    b[i] = 0.0;
    res[i] = 0.0;
  }
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i+=CONST_DISTANCE) {
    b[i] = (double)i;
    res[i] = (double)i;
  }
}

void test(double * restrict a, double * restrict b) {
  int i;
  for(i = 0; i < N; i+=CONST_DISTANCE) {
    a[i] = b[i];
  }
}

int MAINF() {
  double res[N], a[N];
  double b[N];
  int i;
  init (a, b, res);
  for (i = 0; i < 2; i++) {
    test(a, b);
  }
  for (i = 0; i < N; i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
