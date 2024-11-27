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
#define equal_check_with_margin(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-15)
#else
#define equal_check(val1, val2) (val1 != val2)
#define equal_check_with_margin(val1, val2) (val1 != val2)
#endif

void init(double * src, double * res, double (*func)(double)) {
  int i;
  typedef union ld64 {
    unsigned long long ull;
    double d;
  } uld64;
  static const uld64 pzero = {0x0ULL};
  static const uld64 mzero = {0x8000000000000000ULL};
  static const uld64 minf = {0xfff0000000000000ULL};
  static const uld64 ovr = {0x7fefffffffffffffULL};
  static const uld64 und = {0x0010000000000000ULL};

#define SET_REAL_VAL(indx, val) src[indx] = val; res[indx] = func(val)
  SET_REAL_VAL(0, 1.0);
  SET_REAL_VAL(1, 1.1);
  SET_REAL_VAL(2, 1.8);
  SET_REAL_VAL(3, 0.1);
  SET_REAL_VAL(4, 0.4);
  SET_REAL_VAL(5, 1.00000000000001);
  SET_REAL_VAL(6, 0.99999999999999);
  SET_REAL_VAL(7, 1.99999999999999);
  SET_REAL_VAL(8, 2.0);
  SET_REAL_VAL(9, 2.00000000000001);
  SET_REAL_VAL(10, 0.49999999999999);
  SET_REAL_VAL(11, 0.5);
  SET_REAL_VAL(12, 0.50000000000001);
  SET_REAL_VAL(13, 5.0);
  SET_REAL_VAL(14, 100.1);
  SET_REAL_VAL(15, 0.1);
  SET_REAL_VAL(16, 0.0001);
  SET_REAL_VAL(17, 1.49999999999999);
  SET_REAL_VAL(18, 1.5);
  SET_REAL_VAL(19, 1.50000000000001);
  SET_REAL_VAL(20, 0.74999999999999);
  SET_REAL_VAL(21, 0.75);
  SET_REAL_VAL(22, 0.75000000000001);
  SET_REAL_VAL(23, 2.2250738585072015e-308);
  SET_REAL_VAL(24, 1.797693e+308);
  SET_REAL_VAL(25, 2.2250738585072015e-308*0.5);
  SET_REAL_VAL(26, -1.0);
  SET_REAL_VAL(27, pzero.d);
  SET_REAL_VAL(28, mzero.d);
  SET_REAL_VAL(29, 1.0);
  SET_REAL_VAL(30, minf.d);
  SET_REAL_VAL(31, 1.0);
  SET_REAL_VAL(32, 1.0);
  SET_REAL_VAL(33, ovr.d);
  SET_REAL_VAL(34, und.d);

#pragma clang loop vectorize(disable)
  for (i = 35; i < N; i++) {
    SET_REAL_VAL(i, 1.0);
  }
}

void test(double * restrict dest, double * restrict src) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = log10(src[i]);
  }
}

void check(double res, double func_res) {
  if (func_res == 0.0) {
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
  double dest[N], src[N], res[N];
  int i;
  init (src, res, log10);
  for (i = 0;i < 2;i++ ) {
    test (dest, src);
  }
  for (i = 0;i < N;i++) {
    check(dest[i], res[i]);
  }
  PRINT_OK;
  return 0;
}
