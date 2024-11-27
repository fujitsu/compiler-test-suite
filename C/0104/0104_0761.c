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

void init(double _Complex *a, double _Complex *res, int *mask) {
  int i;
  *res = N % 2 != 0 ? -1.0-1.0i : 0.0+0.0i;

#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    if ( i < N/2) {
      a[i] = 1.0+1.0i;
    } else {
      a[i] = -1.0-1.0i;
    }
    mask[i] = 1;
  }
}

double _Complex test(double _Complex * restrict a, int * restrict mask) {
  int i;
  double _Complex ret = 0.0+0.0i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      ret += a[i];
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    ret += a[i];
  }
#endif
  return ret;
}

int MAINF() {
  double _Complex a[N],b,res;
  int mask[N];
  int i;
  init (a,&res,mask);
  for (i = 0;i < 2;i++ ) {
    b = test (a,mask);
  }
  if (equal_check(b, res)) {
    PRINT_NG;
  }
  PRINT_OK;
  return 0;
}
