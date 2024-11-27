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

void init(float *a, float *b, int *c, int *d, float *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    c[i] = i;
    d[i] = i;
    a[i] = 0 ;
    b[i] = (float)i * 2 ;
    res[i] = (float)i * 2 ;
  }
  res[N-1] = 0;
}

void dummy(float * a) {
  return;
}

void test(int * restrict c, int * restrict d, float * restrict res, int indx) {
  int i;
  float a[N], b[N];

  init(a,b,c,d,res);
  for(i = 1;i < N;i++ ) {
    a[c[i]-indx] = b[d[i]-indx];
  }

  dummy(a);
  for (i = 0;i < N;i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
}

int MAINF() {
  float res[N];
  int c[N], d[N];

  test (c,d,res,1);

  return 0;
}
