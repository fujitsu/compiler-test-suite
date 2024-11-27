#include <stdio.h>
#include <stdlib.h>
#include <math.h>

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
#define equal_check(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-15)
#else
#define equal_check(val1, val2) (val1 != val2)
#endif

void init(double * xs, double * ys) {
  double xval, yval, xtmp, ytmp;

  int i;
  xval = 0.999999999999/(N-1);
  yval = 0.999999999999/(N-1);
  xtmp = 0.999999999999;
  ytmp = 0.999999999999;
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
    dest[i] = pow(xs[i], ys[i]);
  }
}

void check(double res, double inx, double iny, double (*func)(double, double)) {
  double func_res;
  func_res = func(inx, iny);
  if (equal_check(res, func_res)) {
    PRINT_NG;
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
    check(dest[i], xs[i], ys[i], pow);
  }
  PRINT_OK;
  return 0;
}
