
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main

#if defined(ROLL_TIMES)
#define N ((ROLL_TIMES>31)?ROLL_TIMES:31)
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#ifndef SAME_CHECK
#define equal_check(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-7f)
#define same_check(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#else
#define equal_check(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#define same_check(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#endif

void init(float * res, float * src) {
  int i;
  typedef union uif32 {
    unsigned int ui;
    float f;
  } uif32;
  static const uif32 pzero = {0x0U};
  static const uif32 pinf  = {0x7f800000U};
  static const uif32 mnan  = {0xffc00000U};
  static const uif32 minf  = {0xff800000U};
  static const uif32 pnan  = {0x7fc00000U};

#define SET_REAL_VAL(indx, val1, res1) src[indx] = val1; res[indx] = res1
  SET_REAL_VAL(0,      1.0,               pzero.f);
  SET_REAL_VAL(1,      1.0,               0.00000000e+00);
  SET_REAL_VAL(2,      1.1,               9.53102037e-02);
  SET_REAL_VAL(3,      1.8,               5.87786615e-01);
  SET_REAL_VAL(4,      0.1,              -2.30258512e+00);
  SET_REAL_VAL(5,      0.4,              -9.16290700e-01);
  SET_REAL_VAL(6,      1.00000000000001,  0.00000000e+00);
  SET_REAL_VAL(7,      0.99999999999999,  0.00000000e+00);
  SET_REAL_VAL(8,      1.99999999999999,  6.93147182e-01);
  SET_REAL_VAL(9,      2.0,               6.93147182e-01);             
  SET_REAL_VAL(10,     2.00000000000001,  6.93147182e-01);
  SET_REAL_VAL(11,     0.49999999999999, -6.93147182e-01);
  SET_REAL_VAL(12,     0.5,              -6.93147182e-01);             
  SET_REAL_VAL(13,     0.50000000000001, -6.93147182e-01);
  SET_REAL_VAL(14,     5.0,               1.60943794e+00);             
  SET_REAL_VAL(15,     100.1,             4.60616970e+00);           
  SET_REAL_VAL(16,     0.1,              -2.30258512e+00);             
  SET_REAL_VAL(17,     0.0001,           -9.21034050e+00);          
  SET_REAL_VAL(18,     1.49999999999999,  4.05465096e-01);
  SET_REAL_VAL(19,     1.5,               4.05465096e-01);             
  SET_REAL_VAL(20,     1.50000000000001,  4.05465096e-01);
  SET_REAL_VAL(21,     0.74999999999999, -2.87682086e-01);
  SET_REAL_VAL(22,     0.75,             -2.87682086e-01);            
  SET_REAL_VAL(23,     0.75000000000001, -2.87682086e-01);
  SET_REAL_VAL(24,     3.40282347e+38,    8.87228394e+01);
  SET_REAL_VAL(25,     -1.0,              mnan.f);
  SET_REAL_VAL(26,     0.0,               minf.f);
  SET_REAL_VAL(27,     pnan.f,            pnan.f);
  SET_REAL_VAL(28,     pinf.f,            pinf.f);
  SET_REAL_VAL(29,     mnan.f,            mnan.f);
  SET_REAL_VAL(30,     minf.f,            mnan.f);

#pragma clang loop vectorize(disable)
  for (i = 31; i < N; i++) {
    src[i] = 1.0;
    res[i] = 0.0;
  }
}

void test(float * restrict dest, float * restrict src) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = logf(src[i]);
  }
}

int MAINF() {
  float dest[N], src[N], res[N];
  int i;
  init (res, src);
  for (i = 0;i < 2;i++ ) {
    test (dest, src);
  }
  for (i = 0;i < N;i++) {
    if ( i == 0 || i >= 24 ) {
      if (same_check(dest[i], res[i])) {
	PRINT_NG;
      }
    } else {
      if (equal_check(dest[i], res[i])) {
	PRINT_NG;
      }
    }
  }
  PRINT_OK;
  return 0;
}
