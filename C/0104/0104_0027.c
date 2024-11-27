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

#define ERR_D 1.0E-13
#define equal_check(val1, val2) ( (val1==0 && fabs(val2)  <= ERR_D ) || \
				  fabs(val1 - val2)/fabs(val1) <= ERR_D)

void init(double _Complex *a, double *res, int *mask) {
  int i;
  double d;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    d = (double)i;
    a[i] = d * (1.0+1.0i);
    res[i] = d;
    mask[i] = 1;
  }
}

void test(double _Complex * restrict a,double * restrict dest, int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      dest[i] = cimag(a[i]);
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    dest[i] = cimag(a[i]);
  }
#endif
}

int MAINF() {
  double _Complex a[N];
  double res[N], dest[N];
  int mask[N];
  int i;
  init (a,res,mask);
  for (i = 0;i < 2;i++ ) {
    test (a,dest,mask);
  }
  for (i = 0;i < N;i++) {
    if (!equal_check(dest[i], res[i])) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
