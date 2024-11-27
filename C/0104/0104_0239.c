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

void init(double *a, double *b, int *c, int *d, double *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    c[i] = i;
    d[i] = i;
    a[i] = 0 ;
    b[i] = (double)i * 2 ;
    res[i] = (double)i * 2 ;
  }
}

void dummy(double *a) {
  return;
}

void test(int * restrict c, int * restrict d, double * restrict res) {
  int i;
  double * restrict a, * restrict b;

  a = malloc(8*N);
  b = malloc(8*N);

  init(a,b,c,d,res);
  for(i = 0;i < N;i++ ) {
    a[c[i]] = b[d[i]];
  }

  dummy(a);

  for (i = 0;i < N;i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  free(a);
  free(b);
}

int MAINF() {
  double res[N];
  int c[N], d[N];

  test (c,d,res);

  return 0;
}
