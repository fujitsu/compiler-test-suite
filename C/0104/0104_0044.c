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

void init(double _Complex * dest, float _Complex * src1, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0.0+0.0i;
    src1[i] = (float)i * 1.0F+1.0iF;
    mask[i] = 1;
  }
}

void test(double _Complex * restrict dest, float _Complex * restrict src1, int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      dest[i] = (double _Complex)src1[i];
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    dest[i] = (double _Complex)src1[i];
  }
#endif
}

int MAINF() {
  double _Complex dest[N];
  float _Complex src1[N];
  int mask[N];
  int i;
  init (dest, src1, mask);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, mask);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != (i*1.0F+1.0iF)) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
