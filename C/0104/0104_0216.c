
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main

#if defined(ROLL_TIMES)
#define N ((ROLL_TIMES>32)?ROLL_TIMES:32)
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#ifndef SAME_CHECK
#define equal_check(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-15)
#define same_check(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#else
#define equal_check(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#define same_check(val1, val2) ((val1 != val2) && !(isnan(val1) && isnan(val2)))
#endif

void init(double * res, double * src) {
  int i;
  typedef union ld64 {
    unsigned long long ull;
    double d;
  } uld64;
  static const uld64 pzero = {0x0ULL};
  static const uld64 mzero = {0x8000000000000000ULL};
  static const uld64 minf = {0xfff0000000000000ULL};
  static const uld64 pnan = {0x7ff8000000000000ULL};

#define SET_REAL_VAL(indx, val1, res1) src[indx] = val1; res[indx] = res1
  SET_REAL_VAL(0,  1.0, pzero.d);
  SET_REAL_VAL(1,  1.1, 	     	     9.53101798043249349e-02);
  SET_REAL_VAL(2,  1.8, 	     	     5.87786664902119060e-01);
  SET_REAL_VAL(3,  0.1, 	     	    -2.30258509299404546e+00);
  SET_REAL_VAL(4,  0.4, 	     	    -9.16290731874154996e-01);
  SET_REAL_VAL(5,  1.00000000000001, 	     9.99200722162635838e-15);
  SET_REAL_VAL(6,  0.99999999999999, 	    -9.99200722162645935e-15);
  SET_REAL_VAL(7,  1.99999999999999, 	     6.93147180559940290e-01);
  SET_REAL_VAL(8,  2.0,              	     6.93147180559945286e-01);
  SET_REAL_VAL(9,  2.00000000000001, 	     6.93147180559950393e-01);
  SET_REAL_VAL(10, 0.49999999999999, 	    -6.93147180559965270e-01);
  SET_REAL_VAL(11, 0.5,              	    -6.93147180559945286e-01);
  SET_REAL_VAL(12, 0.50000000000001, 	    -6.93147180559925302e-01);
  SET_REAL_VAL(13, 5.0,    	     	     1.60943791243410028e+00);
  SET_REAL_VAL(14, 100.1,  	     	     4.60616968632117452e+00);
  SET_REAL_VAL(15, 0.1,    	     	    -2.30258509299404546e+00);
  SET_REAL_VAL(16, 0.0001, 	     	    -9.21034037197618183e+00);
  SET_REAL_VAL(17, 1.49999999999999, 	     4.05465108108157724e-01);
  SET_REAL_VAL(18, 1.5,              	     4.05465108108164385e-01);
  SET_REAL_VAL(19, 1.50000000000001, 	     4.05465108108171046e-01);
  SET_REAL_VAL(20, 0.74999999999999, 	    -2.87682072451794224e-01);
  SET_REAL_VAL(21, 0.75,             	    -2.87682072451780901e-01);
  SET_REAL_VAL(22, 0.75000000000001, 	    -2.87682072451767579e-01);
  SET_REAL_VAL(23, 2.2250738585072015e-308, -7.08396418532264079e+02);
  SET_REAL_VAL(24, 0.0, minf.d);
  SET_REAL_VAL(25, -1.0, pnan.d);
  SET_REAL_VAL(26, 0.0, minf.d);
  SET_REAL_VAL(27, mzero.d, minf.d);
  SET_REAL_VAL(28, 0.0, minf.d);
  SET_REAL_VAL(29, minf.d, pnan.d);
  SET_REAL_VAL(30, 0.0, minf.d);
  SET_REAL_VAL(31, 0.0, minf.d);

#pragma clang loop vectorize(disable)
  for (i = 32; i < N; i++) {
    src[i] = 1.0;
    res[i] = 0.0;
  }
}

void test(double * restrict dest, double * restrict src) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = log(src[i]);
  }
}

int MAINF() {
  double dest[N], src[N], res[N];
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
