#include <stdio.h>
#include <stdlib.h>
#include <math.h>

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

void init(float * dest, float * a, float * b) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0.0F;
    a[i] = (float)i;
    b[i] = (float)-i;
  }
}

void test(float * restrict dest, float * restrict a, float * restrict b) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = copysignf(a[i], b[i]);
  }
}

int MAINF() {
  float dest[N], a[N], b[N];
  int i;
  init (dest, a, b);
  for (i = 0;i < 2;i++ ) {
    test (dest, a, b);
  }
  for (i = 0;i < N;i++) {
    if (b[i] != dest[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
