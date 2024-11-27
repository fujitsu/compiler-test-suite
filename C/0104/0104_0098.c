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

#define equal_check(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-13)

void init(double * dest, double * src1) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0.0;
    src1[i] = (double)(i+1) * 1.00001;
  }
}

void test(double * restrict dest, double * restrict src1) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = floor(src1[i]);
  }
}

int MAINF() {
  double dest[N], src1[N];
  int i;
  init (dest, src1);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1);
  }
  for (i = 0;i < N;i++) {
    if (equal_check(dest[i], ((double)i+1))) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
