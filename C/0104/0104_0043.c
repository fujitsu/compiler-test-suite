#include <stdio.h>
#include <stdlib.h>
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

void init(float _Complex * dest, double _Complex * src1, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0.0F+0.0iF;
    src1[i] = (double)i * 1.0+1.0i;
    mask[i] = 1;
  }
}

void test(float _Complex * restrict dest, double _Complex * restrict src1, int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      dest[i] = (float _Complex)src1[i];
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    dest[i] = (float _Complex)src1[i];
  }
#endif
}

int MAINF() {
  float _Complex dest[N];
  double _Complex src1[N];
  int mask[N];
  int i;
  init (dest, src1, mask);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, mask);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != (i*1.0+1.0i)) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
