#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <float.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main

#if defined(ROLL_TIMES)
#define N ((ROLL_TIMES>111)?ROLL_TIMES:111)
#elif defined(MOD)
#define N 129
#else
#define N 128
#endif

#ifndef SAME_CHECK
#define equal_check(val1, val2) (val1 != val2)
#define equal_check_with_margin(val1, val2) (fabsf(val1 - val2)/fabsf(val1) >= 1.0e-7f)
#define equal_check_with_margin6(val1, val2) (fabsf(val1 - val2)/fabsf(val1) >= 1.0e-6f)
#else
#define equal_check(val1, val2) (val1 != val2)
#define equal_check_with_margin(val1, val2) (val1 != val2)
#define equal_check_with_margin6(val1, val2) (val1 != val2)
#endif

void init(float * xs, float * ys, float * res, float (*func)(float, float)) {
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
  static const uld64 before_under = {0x7f7fffff};
  static const uld64 under        = {0x7f800000};

#define SET_REAL_VAL(indx, val1, val2) xs[indx] = val1; ys[indx] = val2; res[indx] = func(val1, val2)
  SET_REAL_VAL(0, 0.1f, 0.1f);
  SET_REAL_VAL(1, 1.0f, 0.1f);
  SET_REAL_VAL(2, 9.9f, 0.1f);
  SET_REAL_VAL(3, 0.1f, 1.0f);
  SET_REAL_VAL(4, 1.0f, 1.0f);
  SET_REAL_VAL(5, 9.9f, 1.0f);
  SET_REAL_VAL(6, 0.1f, 9.9f);
  SET_REAL_VAL(7, 1.0f, 9.9f);
  SET_REAL_VAL(8, 9.9f, 9.9f);

  SET_REAL_VAL(9 , -0.1f, 0.1f);
  SET_REAL_VAL(10, -1.0f, 0.1f);
  SET_REAL_VAL(11, -9.9f, 0.1f);
  SET_REAL_VAL(12, -0.1f, 1.0f);
  SET_REAL_VAL(13, -1.0f, 1.0f);
  SET_REAL_VAL(14, -9.9f, 1.0f);
  SET_REAL_VAL(15, -0.1f, 9.9f);
  SET_REAL_VAL(16, -1.0f, 9.9f);
  SET_REAL_VAL(17, -9.9f, 9.9f);

  SET_REAL_VAL(18, 0.1f, -0.1f);
  SET_REAL_VAL(19, 1.0f, -0.1f);
  SET_REAL_VAL(20, 9.9f, -0.1f);
  SET_REAL_VAL(21, 0.1f, -1.0f);
  SET_REAL_VAL(22, 1.0f, -1.0f);
  SET_REAL_VAL(23, 9.9f, -1.0f);
  SET_REAL_VAL(24, 0.1f, -9.9f);
  SET_REAL_VAL(25, 1.0f, -9.9f);
  SET_REAL_VAL(26, 9.9f, -9.9f);

  SET_REAL_VAL(27, -0.1f, -0.1f);
  SET_REAL_VAL(28, -1.0f, -0.1f);
  SET_REAL_VAL(29, -9.9f, -0.1f);
  SET_REAL_VAL(30, -0.1f, -1.0f);
  SET_REAL_VAL(31, -1.0f, -1.0f);
  SET_REAL_VAL(32, -9.9f, -1.0f);
  SET_REAL_VAL(33, -0.1f, -9.9f);
  SET_REAL_VAL(34, -1.0f, -9.9f);
  SET_REAL_VAL(35, -9.9f, -9.9f);

  SET_REAL_VAL(36, pzero.d,  1.0f);
  SET_REAL_VAL(37, 1.0f,  pzero.d);
  SET_REAL_VAL(38, pzero.d, -1.0f);
  SET_REAL_VAL(39, -1.0f, pzero.d);

  SET_REAL_VAL(40, mzero.d,  1.0f);
  SET_REAL_VAL(41, 1.0f,  mzero.d);
  SET_REAL_VAL(42, 1.0f , 1.0f);
  SET_REAL_VAL(43, -1.0f, mzero.d);

  SET_REAL_VAL(44, 1e38f , 1e38f );
  SET_REAL_VAL(45, 1e38f , 1.0f  );
  SET_REAL_VAL(46, 1e38f , 2e-38f);
  SET_REAL_VAL(47, 1.0f  , 1e38f );
  SET_REAL_VAL(48, 1.0f  , 1.0f  );
  SET_REAL_VAL(49, 1.0f  , 2e-38f);
  SET_REAL_VAL(50, 2e-38f, 1e38f );
  SET_REAL_VAL(51, 2e-38f, 1.0f  );
  SET_REAL_VAL(52, 2e-38f, 2e-38f);

  SET_REAL_VAL(53, -1e38f , 1e38f );
  SET_REAL_VAL(54, -1e38f , 1.0f  );
  SET_REAL_VAL(55, -1e38f , 2e-38f);
  SET_REAL_VAL(56, -1.0f  , 1e38f );
  SET_REAL_VAL(57, -1.0f  , 1.0f  );
  SET_REAL_VAL(58, -1.0f  , 2e-38f);
  SET_REAL_VAL(59, -2e-38f, 1e38f );
  SET_REAL_VAL(60, -2e-38f, 1.0f  );
  SET_REAL_VAL(61, -2e-38f, 2e-38f);

  SET_REAL_VAL(62, 1.0f , 1.0f);
  SET_REAL_VAL(63, 1e38f , -1.0f  );
  SET_REAL_VAL(64, 1e38f , -2e-38f);
  SET_REAL_VAL(65, 1.0f  , -1e38f );
  SET_REAL_VAL(66, 1.0f  , -1.0f  );
  SET_REAL_VAL(67, 1.0f  , -2e-38f);
  SET_REAL_VAL(68, 2e-38f, -1e38f );
  SET_REAL_VAL(69, 2e-38f, -1.0f  );
  SET_REAL_VAL(70, 2e-38f, -2e-38f);

  SET_REAL_VAL(71, 1.0f , 1.0f);
  SET_REAL_VAL(72, -1e38f , -1.0f  );
  SET_REAL_VAL(73, -1e38f , -2e-38f);
  SET_REAL_VAL(74, -1.0f  , -1e38f );
  SET_REAL_VAL(75, -1.0f  , -1.0f  );
  SET_REAL_VAL(76, -1.0f  , -2e-38f);
  SET_REAL_VAL(77, -2e-38f, -1e38f );
  SET_REAL_VAL(78, -2e-38f, -1.0f  );
  SET_REAL_VAL(79, -2e-38f, -2e-38f);

  SET_REAL_VAL(80, pzero.d, pzero.d);
  SET_REAL_VAL(81, mzero.d, pzero.d);
#ifdef __aarch64__
  SET_REAL_VAL(82, 1.0f, 1.0f);
  SET_REAL_VAL(83, 1.0f, 1.0f);
#else
  SET_REAL_VAL(82, pzero.d, mzero.d);
  SET_REAL_VAL(83, mzero.d, mzero.d);
#endif

  SET_REAL_VAL(84, before_under.d, before_under.d);
  SET_REAL_VAL(85, before_under.d, 1.0f);
  SET_REAL_VAL(86, 1.0f,           before_under.d);

  SET_REAL_VAL(87, under.d, under.d);
  SET_REAL_VAL(88, under.d, 1.0f);
  SET_REAL_VAL(89, 1.0f,    under.d);

  SET_REAL_VAL(90, pinf.d, pinf.d);
  SET_REAL_VAL(91, pinf.d, 1.0f);
  SET_REAL_VAL(92, 1.0f,   pinf.d);
  SET_REAL_VAL(93, minf.d, minf.d);
  SET_REAL_VAL(94, minf.d, 1.0f);
  SET_REAL_VAL(95, 1.0f,   minf.d);
  SET_REAL_VAL(96, pinf.d, minf.d);
  SET_REAL_VAL(97, minf.d, pinf.d);
  SET_REAL_VAL(98, -1.0f,  pinf.d);
  SET_REAL_VAL(99, -1.0f,  minf.d);

  SET_REAL_VAL(100, pinf.d,  pzero.d);
  SET_REAL_VAL(101, pzero.d, pinf.d);
  SET_REAL_VAL(102, minf.d,  pzero.d);
  SET_REAL_VAL(103, pzero.d, minf.d);
  SET_REAL_VAL(104, mzero.d, pinf.d);
  SET_REAL_VAL(105, 1.0f , 1.0f);
  SET_REAL_VAL(106, pnan.d, pnan.d);
  SET_REAL_VAL(107, pnan.d, 1.0f);
  SET_REAL_VAL(108, 1.0f,   pnan.d);
  SET_REAL_VAL(109, pnan.d, 0.0f);
  SET_REAL_VAL(110, 0.0f,   pnan.d);

  SET_REAL_VAL(106, mnan.d, mnan.d);
  SET_REAL_VAL(107, mnan.d, 1.0f);
  SET_REAL_VAL(108, 1.0f,   mnan.d);
  SET_REAL_VAL(109, mnan.d, 0.0f);
  SET_REAL_VAL(110, 0.0f,   mnan.d);

#pragma clang loop vectorize(disable)
  for (i = 111; i < N; i++) {
    SET_REAL_VAL(i, 1.0f, 1.0f);
  }
}

void test(float * restrict dest, float * restrict xs, float * restrict ys) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = atan2f(xs[i], ys[i]);
  }
}

void check(int i, float res, float func_res) {
  if (func_res == 0.0f) {
    if (equal_check(res, func_res)) {
      if (!isnan(res)) {
	PRINT_NG;
      }
    }
  } else if (isnan(func_res)) {
    if (!isnan(res)) {
      PRINT_NG;
    }
  } else if (i == 47 || i == 56 )  {
    if (equal_check_with_margin6(res, func_res)) {
      PRINT_NG;
    }
  } else {
    if (equal_check_with_margin(res, func_res)) {
      PRINT_NG;
    }
  }
}

int MAINF() {
  float dest[N], xs[N], ys[N], res[N];
  int i;
  init (xs, ys, res, atan2f);
  for (i = 0;i < 2;i++ ) {
    test (dest, xs, ys);
  }
  for (i = 0;i < N;i++) {
    check(i, dest[i], res[i]);
  }
  PRINT_OK;
  return 0;
}
