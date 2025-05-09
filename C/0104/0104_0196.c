#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main

#if defined(ROLL_TIMES)
#define N ((ROLL_TIMES>16)?ROLL_TIMES:16)
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#ifndef SAME_CHECK
#define equal_check(val1, val2) (val1 != val2)
#define equal_check_with_margin(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-15)
#else
#define equal_check(val1, val2) (val1 != val2)
#define equal_check_with_margin(val1, val2) (val1 != val2)
#endif

void init(double * src) {
  int i;
  typedef union ld64 {
    unsigned long long ull;
    double d;
  } uld64;
  static const uld64 pzero = {0x0ULL};
  static const uld64 mzero = {0x8000000000000000ULL};
  static const uld64 pinf = {0x7ff0000000000000ULL};
  static const uld64 minf = {0xfff0000000000000ULL};
  static const uld64 pnan = {0x7ff8000000000000ULL};
  static const uld64 mnan = {0xfff8000000000000ULL};

#define SET_REAL_VAL(indx, val) src[indx] = val
  SET_REAL_VAL(0,  0.01);
  SET_REAL_VAL(1,  0.7);
  SET_REAL_VAL(2,  1.5);
  SET_REAL_VAL(3,  1e5);
  SET_REAL_VAL(4,  -0.01);
  SET_REAL_VAL(5,  -0.7);
  SET_REAL_VAL(6,  -1.5);
  SET_REAL_VAL(7,  -1.0e5);
  SET_REAL_VAL(8,  1.0e-5);
  SET_REAL_VAL(9,  -1.0e-5);
  SET_REAL_VAL(10, pzero.d);
  SET_REAL_VAL(11, mzero.d);
  SET_REAL_VAL(12, pinf.d);
  SET_REAL_VAL(13, minf.d);
  SET_REAL_VAL(14, pnan.d);
  SET_REAL_VAL(15, mnan.d);

#pragma clang loop vectorize(disable)
  for (i = 16; i < N; i++) {
    src[i] = 0.0;
  }
}

void test(double * restrict dest, double * restrict src) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = atan(src[i]);
  }
}

void check(double res, double input, double (*func)(double)) {
  double func_res;
  func_res = func(input);
  if (func_res == 0.0) {
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
  double dest[N], src[N];
  int i;
  init (src);
  for (i = 0;i < 2;i++ ) {
    test (dest, src);
  }
  for (i = 0;i < N;i++) {
    check(dest[i], src[i], atan);
  }
  PRINT_OK;
  return 0;
}
