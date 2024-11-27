#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <float.h>

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
#define equal_check_with_margin(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-15)
#else
#define equal_check(val1, val2) (val1 != val2)
#define equal_check_with_margin(val1, val2) (val1 != val2)
#endif

void init(double * xs, double * ys) {
#ifdef ILFUNC_TEST
  static const double xmax = DBL_MAX;
  static const double ymax = DBL_MAX;
#else
  static const double xmax = DBL_MAX/5;
  static const double ymax = DBL_MAX/5;
#endif
  double xval, yval, xtmp, ytmp;

  int i;
  xval = xmax/(N-1);
  yval = ymax/(N-1);
  xtmp = 0.000001;
  ytmp = -ymax;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    switch(i%4) {
    case 0:
      xs[i] = xtmp;
      ys[i] = ytmp;
      break;
    case 1:
      xs[i] = -xtmp;
      ys[i] = ytmp;
      break;
    case 2:
      xs[i] = xtmp;
      ys[i] = -ytmp;
      break;
    case 3:
      xs[i] = -xtmp;
      ys[i] = -ytmp;
      break;
    }
    xtmp += xval;
    ytmp += yval;
  }
}

void test(double * restrict dest, double * restrict xs, double * restrict ys) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = atan2(xs[i], ys[i]);
  }
}

void check(double res, double inx, double iny, double (*func)(double, double)) {
  double func_res;
  func_res = func(inx, iny);
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
  double dest[N], xs[N], ys[N];
  int i;
  init (xs, ys);
  for (i = 0;i < 2;i++ ) {
    test (dest, xs, ys);
  }
  for (i = 0;i < N;i++) {
    check(dest[i], xs[i], ys[i], atan2);
  }
  PRINT_OK;
  return 0;
}
