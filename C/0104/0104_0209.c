#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main

#if defined(ROLL_TIMES)
#define N ((ROLL_TIMES>35)?ROLL_TIMES:35)
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

void init(float * src, float * res, float (*func)(float)) {
  int i;
  union fl {
    float f;
    unsigned int ui;
  };
  static const union fl pzero                = {0x00000000U};
  static const union fl mzero                = {0x80000000U};
  static const union fl pinf                 = {0x7f800000U};
  static const union fl minf                 = {0xff800000U};
  static const union fl pnan                 = {0x7fc00000U};
  static const union fl mnan                 = {0xffc00000U};
  static const union fl overflow             = {0x7f7fffffU};
  static const union fl before_overflow      = {0x7f7ffffeU};
  static const union fl underflow            = {0x00800000U};
  static const union fl before_underflow     = {0x007ffffeU};

#define SET_REAL_VAL(indx, val) src[indx] = val; res[indx] = func(val)
  SET_REAL_VAL(0, 1.0f);
  SET_REAL_VAL(1, 1.1f);
  SET_REAL_VAL(2, 1.8f);
  SET_REAL_VAL(3, 0.1f);
  SET_REAL_VAL(4, 0.4f);
  SET_REAL_VAL(5, 1.00000000000001f);
  SET_REAL_VAL(6, 0.99999999999999f);
  SET_REAL_VAL(7, 1.99999999999999f);
  SET_REAL_VAL(8, 2.0f);
  SET_REAL_VAL(9, 2.00000000000001f);
  SET_REAL_VAL(10, 0.49999999999999f);
  SET_REAL_VAL(11, 0.5f);
  SET_REAL_VAL(12, 0.50000000000001f);
  SET_REAL_VAL(13, 5.0f);
  SET_REAL_VAL(14, 100.1f);
  SET_REAL_VAL(15, 0.1f);
  SET_REAL_VAL(16, 0.0001f);
  SET_REAL_VAL(17, 1.49999999999999f);
  SET_REAL_VAL(18, 1.5f);
  SET_REAL_VAL(19, 1.50000000000001f);
  SET_REAL_VAL(20, 0.74999999999999f);
  SET_REAL_VAL(21, 0.75f);
  SET_REAL_VAL(22, 0.75000000000001f);
  SET_REAL_VAL(23,  3.40282347e+38f);
  SET_REAL_VAL(24, -1.0f);
  SET_REAL_VAL(25, pzero.f);
  SET_REAL_VAL(26, mzero.f);
  SET_REAL_VAL(27, pnan.f);
  SET_REAL_VAL(28, mnan.f);
  SET_REAL_VAL(29, pinf.f);
  SET_REAL_VAL(30, minf.f);
  SET_REAL_VAL(31, overflow.f);
  SET_REAL_VAL(32, underflow.f);
  SET_REAL_VAL(33, before_overflow.f);
  SET_REAL_VAL(34, before_underflow.f);

#pragma clang loop vectorize(disable)
  for (i = 35; i < N; i++) {
    SET_REAL_VAL(i, 1.0f);
  }
}

void test(float * restrict dest, float * restrict src) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = log10f(src[i]);
  }
}

void check(float res, float func_res) {
  if (func_res == 0.0f) {
    if (equal_check(res, func_res)) {
      PRINT_NG;
    }
  } else if (isnan(func_res)) {
    if (!isnan(res)) {
      PRINT_NG;
    }
  } else {
    if (equal_check_with_margin(res, func_res)) {
      PRINT_NG;
    }
  }
}

int MAINF() {
  float dest[N], src[N], res[N];
  int i;
  init (src, res, log10f);
  for (i = 0;i < 2;i++ ) {
    test (dest, src);
  }
  for (i = 0;i < N;i++) {
    check(dest[i], res[i]);
  }
  PRINT_OK;
  return 0;
}
