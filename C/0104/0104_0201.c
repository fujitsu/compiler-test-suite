#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main

#if defined(ROLL_TIMES)
#define N ((ROLL_TIMES>20)?ROLL_TIMES:20)
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#ifndef SAME_CHECK
#define equal_check(val1, val2) (val1 != val2)
#ifdef __aarch64__
#define equal_check_with_margin(val1, val2) (fabsf(val1 - val2)/fabsf(val1) >= 1.0e-6F)
#else
#define equal_check_with_margin(val1, val2) (fabsf(val1 - val2)/fabsf(val1) >= 1.0e-7F)
#endif
#else
#define equal_check(val1, val2) (val1 != val2)
#define equal_check_with_margin(val1, val2) (val1 != val2)
#endif

void init(float * src) {
  int i;
  typedef union ld64 {
    unsigned ull;
    float d;
  } uld64;
  static const uld64 pzero = {0x0U};
  static const uld64 mzero = {0x80000000U};
  static const uld64 pinf = {0x7f800000U};
  static const uld64 minf = {0xff800000U};
  static const uld64 pnan = {0x7fc00000U};
  static const uld64 mnan = {0xffc00000U};

#define SET_REAL_VAL(indx, val) src[indx] = val
  SET_REAL_VAL(0, 1.0F);
  SET_REAL_VAL(1, 1.1F);
  SET_REAL_VAL(2, 2.0F);
  SET_REAL_VAL(3, 4.0F);
  SET_REAL_VAL(4, 8.0F);
  SET_REAL_VAL(5, 1.0e30F);
  SET_REAL_VAL(6, 1.0e-30F);
  SET_REAL_VAL(7, -1.0F);
  SET_REAL_VAL(8, -1.1F);
  SET_REAL_VAL(9, -2.0F);
  SET_REAL_VAL(10, -4.0F);
  SET_REAL_VAL(11, -8.0F);
  SET_REAL_VAL(12, -1.0e30F);
  SET_REAL_VAL(13, -1.0e-30F);
  SET_REAL_VAL(14, pzero.d);
  SET_REAL_VAL(15, mzero.d);
  SET_REAL_VAL(16, pinf.d);
  SET_REAL_VAL(17, minf.d);
  SET_REAL_VAL(18, pnan.d);
  SET_REAL_VAL(19, mnan.d);

#pragma clang loop vectorize(disable)
  for (i = 20; i < N; i++) {
    src[i] = 0.0F;
  }
}

void test(float * restrict dest, float * restrict src) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = cbrtf(src[i]);
  }
}

void check(float res, float input, float (*func)(float)) {
  float func_res;
  func_res = func(input);
  if (func_res == 0.0F) {
    if (equal_check(res, func_res)) {
      PRINT_NG;
    }
  } else {
    if (equal_check_with_margin(res, func_res)) {
      PRINT_NG;
    }
  }
}

int MAINF() {
  float dest[N], src[N];
  int i;
  init (src);
  for (i = 0;i < 2;i++ ) {
    test (dest, src);
  }
  for (i = 0;i < N;i++) {
    check(dest[i], src[i], cbrtf);
  }
  PRINT_OK;
  return 0;
}
