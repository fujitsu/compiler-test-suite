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

void init(float _Complex *a, float _Complex *b, float _Complex *c, float _Complex *res, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = 0.0F;
    if (i < N/2) {
      b[i] = i * (1.0F+1.0iF);
      c[i] = i * (1.0F+1.0iF);
      res[i] = i * (1.0F+1.0iF) + (1.0F+1.0iF);
    } else {
      b[i] = -i * (1.0F+1.0iF);
      c[i] = -i * (1.0F-1.0iF);
      res[i] = -i * (1.0F-1.0iF) + (1.0F+1.0iF);
    }
    mask[i] = 1;
  }
}

void test(float _Complex * restrict a,float _Complex * restrict b,float _Complex * restrict c, int * restrict mask) {
  int i;
  float _Complex tmp, tmpb, tmpc;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      tmpb = b[i];
      tmpc = c[i];
      tmp = (tmpb == tmpc) ? tmpb : tmpc;
      a[i] = tmp + (1.0F+1.0iF);
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    tmpb = b[i];
    tmpc = c[i];
    tmp = (tmpb == tmpc) ? tmpb : tmpc;
    a[i] = tmp + (1.0F+1.0iF);
  }
#endif
}

int MAINF() {
  float _Complex a[N],b[N],c[N],res[N];
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
