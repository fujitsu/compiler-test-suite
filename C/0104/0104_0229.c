
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

void init(int *a, int *b, int *c, int *d) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    c[i] = i;
    d[i] = i;
    a[i] = 0 ;
    b[i] = (int)i * 2 ;
  }
}

void test(int * restrict a, int * restrict b, int * restrict c, int * restrict d) {
  int i;
  for(i = 0;i < N;i++ ) {
    a[c[i]] = b[d[i]];
  }
}

int MAINF() {
  int a[N], b[N];
  int c[N], d[N],i;

  init (a,b,c,d);
  test (a,b,c,d);

  for (i = 0;i < N;i++) {
    if (a[i] != b[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
