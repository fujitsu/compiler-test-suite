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

void init(double *a,double *b,double *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = 0.0;
    res[i] = i;
    if ( i < N/2) {
      b[i] = i;
    } else {
      b[i] = -i;
    }
  }
}

void test(double * restrict a,double * restrict b) {
  int i;
  for(i = 0;i < N;i++ ) {
    a[i] = fabs(b[i]);
  }
}

int MAINF() {
  double a[N];
  double b[N],res[N];
  int i;
  init (a,b,res);
  for (i = 0;i < 2;i++ ) {
    test (a,b);
  }
  for (i = 0;i < N;i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
