#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <complex.h>

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

#define equal_check(val1, val2) (fabs(creal(val1) - creal(val2))/fabs(creal(val1)) >= 1.0e-13 || fabs(cimag(val1) - cimag(val2))/fabs(cimag(val1)) >= 1.0e-13)

void init(double _Complex * dest,double _Complex * src,double _Complex *res, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0;
    src[i] =  i;
    res[i] = -i;
    mask[i] = 1;
  }
}

void test(double _Complex * restrict dest,double _Complex * restrict src, int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      dest[i] = -src[i];
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    dest[i] = -src[i];
  }
#endif
}

int MAINF() {
  double _Complex dest[N], src[N], res[N];
  int mask[N];
  int i;
  init (dest, src, res, mask);
  for (i = 0;i < 2;i++ ) {
    test (dest, src, mask);
  }
  for (i = 0;i < N;i++) {
    if (equal_check(dest[i], res[i])) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
