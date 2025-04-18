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

#define CONST_DISTANCE 2

void init(double _Complex * a, double _Complex *b, double _Complex *res, int *c) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = 0.0F+0.0iF;
    b[i] = 0.0F+0.0iF;
    res[i] = 0.0F+0.0iF;
    c[i] = 0;
  }
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i+=CONST_DISTANCE) {
    b[i] = i * (2.0F+2.0iF);
    res[i] = i * (2.0F+2.0iF);
    c[i] = 1;
  }
}

void test(double _Complex * restrict a, double _Complex * restrict b, int * restrict c) {
  int i;
  for(i = 0; i < N; i+=CONST_DISTANCE) {
    if (c[i] == 1) {
      a[i] = b[i];
    }
  }
}

int MAINF() {
  double _Complex res[N], a[N];
  double _Complex b[N];
  int c[N];
  int i;

  init (a, b, res, c);
  for (i = 0; i < 2; i++) {
    test(a, b, c);
  }
  for (i = 0; i < N; i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
