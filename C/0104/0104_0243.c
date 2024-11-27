
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

double _Complex a[N], b[N], res[N];
int c[N], d[N];

void init() {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    c[i] = i;
    d[i] = i;
    a[i] = 0 ;
    if (i >= N/2) {
      b[i] = i * (2.0F+2.0iF);
      res[i] = i * (2.0F+2.0iF);
    } else {
      b[i] = -i * (2.0F+2.0iF);
      res[i] = -i * (2.0F+2.0iF);
    }
  }
}

void test() {
  int i;
  for(i = 0;i < N;i++ ) {
    a[c[i]] = b[d[i]];
  }
}

int MAINF() {
  int i;

  init ();
  test ();

  for (i = 0;i < N;i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
