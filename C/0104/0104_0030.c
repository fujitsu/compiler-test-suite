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

#define ERR_S 1.0E-6
#define equal_check(val1, val2) ( (val1==0 && fabs(val2)       <= ERR_S ) || \
				  fabs(val1 - val2)/fabs(val1) <= ERR_S)

void init(float _Complex *a, float *res, int *mask) {
  int i;
  float d;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    d = (float)i;
    a[i] = d * (1.0F+1.0iF);
    res[i] = d;
    mask[i] = 1;
  }
}

void test(float _Complex * restrict a,float * restrict dest, int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      dest[i] = crealf(a[i]);
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    dest[i] = crealf(a[i]);
  }
#endif
}

int MAINF() {
  float _Complex a[N];
  float res[N], dest[N];
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
