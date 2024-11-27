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

#define equal_check(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-13)

void init(double * dest, double * src, double * res, double (*func)(double)) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0.0;
    src[i] = (double)i;
    res[i] = func((double)i);
  }
}

void test(double * restrict dest, double * restrict src) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = cos(src[i]);
  }
}

int MAINF() {
  double dest[N], src[N], res[N];
  int i;
  init (dest, src, res, cos);
  for (i = 0;i < 2;i++ ) {
    test (dest, src);
  }
  for (i = 0;i < N;i++) {
    if (equal_check(dest[i],res[i])) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
