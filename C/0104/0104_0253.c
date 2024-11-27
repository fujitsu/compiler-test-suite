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

#define CONST_DISTANCE 8

void init(float * a, float *b, float *res, int *c) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = 0.0F;
    b[i] = 0.0F;
    res[i] = 0.0F;
    c[i] = 0;
  }
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i+=CONST_DISTANCE) {
    b[i] = (float)i;
    res[i] = (float)i;
    c[i] = 1;
  }
}

void test(float * restrict a, float * restrict b, int * restrict c) {
  int i;
  for(i = 0; i < N; i+=CONST_DISTANCE) {
    if (c[i] == 1) {
      a[i] = b[i];
    }
  }
}

int MAINF() {
  float res[N], a[N];
  float b[N];
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
