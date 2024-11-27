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

float _Complex c;

void init(float _Complex * dest, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0.0F+0.0iF;
    mask[i] = 1;
  }
  c = (N-1) * (1.0F+1.0iF);
}

void test(float _Complex * restrict dest, int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      dest[i] = c;
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    dest[i] = c;
  }
#endif
}

int MAINF() {
  float _Complex dest[N];
  int mask[N];
  int i;
  init(dest,mask);

  for (i = 0;i < 2;i++ ) {
    test(dest,mask);
  }
  
  for (i = 0;i < N;i++) {
    if (equal_check(dest[i], c)) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
