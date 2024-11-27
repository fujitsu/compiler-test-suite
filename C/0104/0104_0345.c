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

void init(float _Complex *b, float _Complex *c, float _Complex *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    if ( i < N/2) {
      b[i] = 1.0+1.0i;
      c[i] = 1.0+1.0i;
      res[i] = 1.0+1.0i;
    } else {
      b[i] = 1.0+1.0i;
      c[i] = -1.0-1.0i;
      res[i] = -1.0-1.0i;
    }
  }
}

void test(float _Complex * restrict a, float _Complex * restrict b, float _Complex * restrict c) {
  int i;
  for(i = 0;i < N;i++ ) {
    a[i] = (b[i] != c[i]) ? c[i] : b[i];
  }
}

int MAINF() {
  float _Complex a[N],b[N],c[N],res[N];
  int i;
  init (b,c,res);
  for (i = 0;i < 2;i++ ) {
    test (a,b,c);
  }
  for (i = 0;i < N;i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
