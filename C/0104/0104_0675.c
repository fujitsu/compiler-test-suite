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

void init(double * dest, double * a, double * b) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0.0F;
    a[i] = (double)i;
    b[i] = (double)-i;
  }
}

void test(double * restrict dest, double * restrict a, double * restrict b) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = copysign(a[i], b[i]);
  }
}

int MAINF() {
  double dest[N], a[N], b[N];
  int i;
  init (dest, a, b);
  for (i = 0;i < 2;i++ ) {
    test (dest, a, b);
  }
  for (i = 0;i < N;i++) {
    if (b[i] != dest[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
