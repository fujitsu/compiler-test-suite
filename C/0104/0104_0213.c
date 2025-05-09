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
#define equal_check(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-6f)
#else
#define equal_check(val1, val2) (val1 != val2)
#endif

void init(float * src) {
  static const float inmax = 2.0;
  static const float inmin = 0.0;
  float val, tmp;
  int i;

  val = (inmax - inmin)/(N-1);
  tmp = inmin;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    src[i] = tmp;
    tmp += val;
  }
}

void test(float * restrict dest, float * restrict src) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = logf(src[i]);
  }
}

void check(float res, float input, float (*func)(float)) {
  float func_res;
  func_res = func(input);
  if (equal_check(res, func_res)) {
    PRINT_NG;
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
    check(dest[i], src[i], logf);
  }
  PRINT_OK;
  return 0;
}
