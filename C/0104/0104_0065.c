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

void init(float _Complex *dest, double * src1) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0.0+0.0i;
    src1[i] = i;
  }
}

void test(float _Complex *restrict dest, double * restrict src1) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = (float _Complex)src1[i];
  }
}

int MAINF() {
  float _Complex dest[N];
  double  src1[N];
  int i;
  init (dest, src1);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != src1[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
