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

void init(float _Complex * dest, float _Complex * a, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0.0F+0.0iF;
    a[i] = ((float)i) * (1.0F+1.0iF);
    mask[i] = 1;
  }
}

void test(float _Complex * restrict dest, float _Complex * restrict a, const float _Complex d, int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      dest[i] = a[i] + d;
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    dest[i] = a[i] + d;
  }
#endif
}

int MAINF() {
  float _Complex dest[N], a[N];
  int mask[N];
  int i;
  init(dest,a,mask);

  for (i = 0;i < 2;i++ ) {
    test(dest,a,1.0F+1.0iF,mask);
  }
  
  for (i = 0;i < N;i++) {
    if (equal_check(dest[i], a[i] + (1.0F+1.0iF))) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
