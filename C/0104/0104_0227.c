#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main

#if defined(ROLL_TIMES)
#define N ((ROLL_TIMES>18)?ROLL_TIMES:18)
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#ifndef SAME_CHECK
#define equal_check(val1, val2) (val1 != val2)
#define equal_check_with_margin(val1, val2) (fabsf(val1 - val2)/fabsf(val1) >= 1.0e-7F)
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
  SET_REAL_VAL(0,  0.01F);
  SET_REAL_VAL(1,  0.24999F);
  SET_REAL_VAL(2,  0.49999F);
  SET_REAL_VAL(3,  0.7F);
  SET_REAL_VAL(4,  1.5F);
  SET_REAL_VAL(5,  1e5F);
  SET_REAL_VAL(6,  -0.01F);
  SET_REAL_VAL(7,  -0.7F);
  SET_REAL_VAL(8,  -1.5F);
  SET_REAL_VAL(9,  -1.0e5F);
  SET_REAL_VAL(10, 1.0e-5F);
  SET_REAL_VAL(11, -1.0e-5F);
  SET_REAL_VAL(12, pzero.d);
  SET_REAL_VAL(13, mzero.d);
  SET_REAL_VAL(14, pinf.d);
  SET_REAL_VAL(15, minf.d);
  SET_REAL_VAL(16, pnan.d);
  SET_REAL_VAL(17, mnan.d);

#pragma clang loop vectorize(disable)
  for (i = 18; i < N; i++) {
    src[i] = 0.0F;
  }
}

void test(float * restrict dest, float * restrict src) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = tanf(src[i]);
  }
}

void check(float res, float input, float (*func)(float)) {
  float func_res;
  func_res = func(input);
  if (func_res == 0.0F) {
    if (equal_check(res, func_res)) {
      printf(" %f: %f %f ",input,res,func_res);
      PRINT_NG;
    }
  } else {
    if (equal_check_with_margin(res, func_res)) {
      printf(" %f: %f %f ",input,res,func_res);
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
    check(dest[i], src[i], tanf);
  }
  PRINT_OK;
  return 0;
}
