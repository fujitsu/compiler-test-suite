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

#define equal_check(val1, val2) (fabs(creal(val1) - creal(val2)) >= 1.0e-13 || fabs(cimag(val1) - cimag(val2)) >= 1.0e-13)

void init(double _Complex *a, double _Complex *b, double _Complex *c, double _Complex *res, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = 0.0;
    b[i] = (i+1) * (1.0+1.0i);
    c[i] = (i+1) * (1.0-1.0i);
    res[i] = -1.0i;
    mask[i] = 1;
  }
}

void test(double _Complex * restrict a,double _Complex * restrict b,double _Complex * restrict c, int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      a[i] = c[i] / b[i];
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    a[i] = c[i] / b[i];
  }
#endif
}

int MAINF() {
  double _Complex a[N],b[N],c[N],res[N];
  int mask[N];
  int i;
  init (a,b,c,res,mask);
  for (i = 0;i < 2;i++ ) {
    test (a,b,c,mask);
  }
  for (i = 0;i < N;i++) {
    if (equal_check(a[i], res[i])) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
