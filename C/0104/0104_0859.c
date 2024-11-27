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

void init(float * dest, float * src1, float *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0.0F;
    src1[i] = (float)i;
    res[i] = (float)N;
  }
}

void test(float * restrict dest, float * restrict src1) {
  int i;
  for(i = 0;i < N; i++ ) {
    dest[0] = src1[i];
  }
}

int MAINF() {
  float dest[N], src1[N], res[N];
  int i;
  init (dest, src1, res);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1);
  }
  for (i = 0;i < N; i++) {
    if (dest[i] == res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
