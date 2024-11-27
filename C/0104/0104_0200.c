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

void init(double * src) {
  double val, tmp;

  int i;
  val = (DBL_MAX/(N-1))*2.0;
  tmp = DBL_MIN;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    src[i] = tmp;
    tmp += val;
  }
}

void test(double * restrict dest, double * restrict src) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = cbrt(src[i]);
  }
}

void check(double res, double input, double (*func)(double)) {
  double func_res;
  func_res = func(input);
  if (equal_check_with_margin(res, func_res)) {
    PRINT_NG;
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
    check(dest[i], src[i], cbrt);
  }
  PRINT_OK;
  return 0;
}
