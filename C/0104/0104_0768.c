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

void init(float _Complex * dest,float _Complex * src,float _Complex *res, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0;
    src[i] =  i;
    res[i] = -i;
    mask[i] = 1;
  }
}

void test(float _Complex * restrict dest,float _Complex * restrict src, int * restrict mask) {
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
  float _Complex dest[N], src[N], res[N];
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
