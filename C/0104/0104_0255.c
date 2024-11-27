#include <stdio.h>
#include <stdlib.h>
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

#define CONST_DISTANCE 8
#define INDX 1

void init(double * a, double *b, double *res, int *c) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = 0.0F;
    b[i] = 0.0F;
    res[i] = 0.0F;
    c[i] = 0;
  }
#pragma clang loop vectorize(disable)
  for (i = 0; i < N-1; i+=CONST_DISTANCE) {
    b[i+INDX] = (double)i;
    res[i+INDX] = (double)i;
    c[i] = 1;
  }
}

void test(int dummy1, int dummy2, int dummy3, int dummy4, int dummy5, int dummy6,
	  double * restrict a, double * restrict b, int *c) {
  int i;
  for(i = 0; i < N-1; i+=CONST_DISTANCE) {
    if (c[i] == 1) {
      a[i+INDX] = b[i+INDX];
    }
  }
}

int MAINF() {
  double res[N], a[N];
  double b[N];
  int c[N];
  int i;

  init (a, b, res, c);
  for (i = 0; i < 2; i++) {
    test(1,2,3,4,5,6, a, b, c);
  }
  for (i = 0; i < N; i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
