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
#define equal_check(val1, val2) (val1 != val2)
#define equal_check_with_margin(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-15)
#else
#define equal_check(val1, val2) (val1 != val2)
#define equal_check_with_margin(val1, val2) (val1 != val2)
#endif

void init(double * dest, double * src1, double * src2, double * src3) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0.0;
    src1[i] = 1.0;
    src2[i] = (double)i;
    src3[i] = (double)i;
  }
}

void test(double * restrict dest, double * restrict src1, double * restrict src2, double * restrict src3) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = - (src1[i] * src2[i]) + src3[i];
  }
}

int MAINF() {
  double dest[N], src1[N], src2[N], src3[N];
  int i;
  init (dest, src1, src2, src3);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, src2, src3);
  }
  for (i = 0;i < N;i++) {
    if (equal_check(dest[i], 0.0)) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
