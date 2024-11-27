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

#define equal_check(val1, val2) (fabsf(crealf(val1) - crealf(val2))/fabsf(crealf(val1)) >= 1.0e-6F || fabsf(cimagf(val1) - cimagf(val2))/fabsf(cimagf(val1)) >= 1.0e-6F)

void init(float _Complex *a, float _Complex *res, int *mask) {
  int i;
  *res = N % 2 != 0 ? -2.0F-2.0iF : 0.0F+0.0iF;

#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    if ( i < N/2) {
      a[i] = 1.0F+1.0iF;
    } else {
      a[i] = -1.0F-1.0iF;
    }
    mask[i] = 1;
  }
}

float _Complex test(float _Complex * restrict a, float _Complex * restrict ret, int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      ret[0] += a[i];
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    ret[0] += a[i];
  }
#endif
  return ret[0];
}

int MAINF() {
  float _Complex a[N],b,res;
  float _Complex ret = 0.0F+0.0iF;
  int mask[N];
  int i;
  init (a,&res,mask);
  for (i = 0;i < 2;i++ ) {
    b = test (a, &ret, mask);
  }
  if (equal_check(b, res)) {
    PRINT_NG;
  }
  PRINT_OK;
  return 0;
}
