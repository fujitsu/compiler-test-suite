
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

double a[N], b[N], res[N];
int c[N], d[N];

void init(int *e) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    c[i] = i;
    d[i] = i;
    a[i] = 0 ;
    b[i] = (double)i * 2 ;
    if (i >= N/2) {
      e[i] = 1;
      res[i] = (double)i * 2 ;
    } else {
      e[i] = 0;
      res[i] = 0;
    }
  }
}

void test(int * restrict e) {
  int i;
  for(i = 0;i < N;i++ ) {
    if (e[i] == 1) {
      a[c[i]] = b[d[i]];
    }
  }
}

int MAINF() {
  int i;
  int e[N];

  init (e);
  test (e);

  for (i = 0;i < N;i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
