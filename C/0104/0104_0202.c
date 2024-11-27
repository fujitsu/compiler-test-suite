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
#define equal_check_with_margin(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-15)
#else
#define equal_check(val1, val2) (val1 != val2)
#define equal_check_with_margin(val1, val2) (val1 != val2)
#endif

void init(double * src, int * is_nocheck) {
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
  SET_REAL_VAL(0, 1.0);
  SET_REAL_VAL(1, 1.1);
  SET_REAL_VAL(2, 2.0);
  SET_REAL_VAL(3, 8.0);
  SET_REAL_VAL(4, 1.0e300);
  SET_REAL_VAL(5, 1.0e-300);
  SET_REAL_VAL(6, 1.0e-310);
  SET_REAL_VAL(7, -1.0);
  SET_REAL_VAL(8, -1.1);
  SET_REAL_VAL(9, -2.0);
  SET_REAL_VAL(10, -8.0);
  SET_REAL_VAL(11, -1.0e300);
  SET_REAL_VAL(12, -1.0e-300);
  SET_REAL_VAL(13, -1.0e-310);
  SET_REAL_VAL(14, pzero.d);
  SET_REAL_VAL(15, mzero.d);
  SET_REAL_VAL(16, pinf.d);
  SET_REAL_VAL(17, minf.d);
  SET_REAL_VAL(18, pnan.d);
  SET_REAL_VAL(19, mnan.d);

#pragma clang loop vectorize(disable)
  for (i = 20; i < N; i++) {
    src[i] = 0.0;
  }

#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    is_nocheck[i] = 0;
  }
  is_nocheck[6] = 1;
  is_nocheck[13] = 1;
}


void test(double * restrict dest, double * restrict src) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = cbrt(src[i]);
  }
}

void check(double res, double input, double (*func)(double), int is_nocheck) {
  double func_res;

  if (is_nocheck) {
    return;
  }
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
  int is_nocheck[N];
  int i;
  init (src, is_nocheck);
  for (i = 0;i < 2;i++ ) {
    test (dest, src);
  }
  for (i = 0;i < N;i++) {
    check(dest[i], src[i], cbrt, is_nocheck[i]);
  }
  PRINT_OK;
  return 0;
}
