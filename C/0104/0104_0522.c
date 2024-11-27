#include <stdio.h>
#include <stdlib.h>
#include <math.h>

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

void init(double * dest, double * src1, double * src2, int *m) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0.0;
    src1[i] = (double)i+1.0;
    src2[i] = (double)i;
    m[i] = 1;
  }
}

void test(double * restrict dest, double * restrict src1, double * restrict src2, int * restrict m) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = (m[i]) ? src1[i] : src2[i];
  }
}

int MAINF() {
  double dest[N], src1[N], src2[N];
  int m[N];
  int i;
  init (dest, src1, src2, m);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, src2, m);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != src1[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
