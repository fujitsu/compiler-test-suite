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

#define ERR_S 1.0E-14
#define equal_check(val1, val2) ((val1==0 && fabs(val2) <= ERR_S ) ||    \
				  fabs(val1 - val2)/fabs(val1) <= ERR_S)

void init(double *a,double _Complex *b,double *res, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = 0.0;
    res[i] = sqrt((double)i * (double)i * 2.0);
    if ( i < N/2) {
      b[i] = ((double)i) * (1.0+1.0i);
    } else {
      b[i] = ((double)-i) * (1.0+1.0i);
    }
    mask[i] = 1;
  }
}

void test(double * restrict a,double _Complex * restrict b, int * mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      a[i] = cabs(b[i]);
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    a[i] = cabs(b[i]);
  }
#endif
}

int MAINF() {
  double a[N],res[N];
  double _Complex b[N];
  int mask[N];
  int i;
  init (a,b,res,mask);
  for (i = 0;i < 2;i++ ) {
    test (a,b,mask);
  }
  for (i = 0;i < N;i++) {
    if (!equal_check(a[i], res[i])) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
