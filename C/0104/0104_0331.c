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
#define equal_check(val1, val2) ((cabs(val1) == 0 && cabs(val2) <= ERR_D) || \
				 (cabs(val1 - val2)/cabs(val1) <= ERR_D))

void init(double _Complex *a, double _Complex *b, double _Complex *c, double _Complex *res, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = 0.0;
    res[i] = ((double)i) * ((double)i) * 2.0;
    if ( i < N/2) {
      b[i] = i * (1.0+1.0i);
      c[i] = i * (1.0-1.0i);
    } else {
      b[i] = -i * (1.0+1.0i);
      c[i] = -i * (1.0-1.0i);
    }
    mask[i] = 1;
  }
}

void test(double _Complex * restrict a,double _Complex * restrict b,double _Complex * restrict c,int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      a[i] = b[i] * c[i];
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    a[i] = b[i] * c[i];
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
    if (!equal_check(a[i], res[i])) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
