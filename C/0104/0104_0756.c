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

#ifndef SAME_CHECK
#define equal_check(val1, val2) (val1 != val2)
#define equal_check_with_margin(val1, val2) (fabsf(val1 - val2)/fabsf(val1) >= 1.0e-6f)
#else
#define equal_check(val1, val2) (val1 != val2)
#define equal_check_with_margin(val1, val2) (val1 != val2)
#endif

void init(float * dest, float * src1, float * src2) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0.0F;
    src1[i] = (float)i;
    src2[i] = (float)i;
  }
}

void test(float * restrict dest, float * restrict src1, float * restrict src2) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = src1[i] - src2[i];
  }
}

int MAINF() {
  float dest[N], src1[N], src2[N];
  int i;
  init (dest, src1, src2);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, src2);
  }
  for (i = 0;i < N;i++) {
    if (equal_check(dest[i], 0.0F)) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
