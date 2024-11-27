
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

#define INDX 1

unsigned int a[N], b[N], res[N];
int c[N], d[N];

void init() {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    c[i] = i;
    d[i] = i;
    a[i] = 0 ;
    b[i] = (unsigned int)i * 2 ;
    res[i] = (unsigned int)i * 2 ;
  }
  res[N-1] = 0;
}

void test() {
  int i;
  for(i = 1;i < N;i++ ) {
    a[c[i]-INDX] = b[d[i]-INDX];
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
