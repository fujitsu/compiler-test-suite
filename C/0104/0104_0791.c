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

void init(double _Complex * dest, double _Complex * a, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0.0+0.0i;
    a[i] = ((double)i) * (1.0+1.0i);
    mask[i] = 1;
  }
}

void test(double _Complex * restrict dest, double _Complex * restrict a, int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      dest[i] = a[i] + 1.0+1.0i;
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    dest[i] = a[i] + 1.0+1.0i;
  }
#endif
}

int MAINF() {
  double _Complex dest[N], a[N];
  int mask[N];
  int i;
  init(dest,a,mask);

  for (i = 0;i < 2;i++ ) {
    test(dest,a,mask);
  }
  
  for (i = 0;i < N;i++) {
    if (equal_check(dest[i], a[i] + (1.0+1.0i))) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
