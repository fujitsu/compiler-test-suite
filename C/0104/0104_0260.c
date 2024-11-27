
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

void init(float *b, int *c) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    c[i] = i;
    b[i] = (float)i * 2.0 ;
  }
}

void test(float * restrict a, float ** restrict b, int * restrict c) {
  int i;
  for(i = 0;i < N;i++ ) {
    a[i] = *b[c[i]];
  }
}

int MAINF() {
  float a[N], *b[N];
  float x[N];
  int c[N], i;

  init (x,c);
  for (i = 0;i < N;i++) {
    b[i] =&x[i];
  }

  test (a,b,c);
  for (i = 0;i < N;i++) {
    if (a[i] != *b[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
