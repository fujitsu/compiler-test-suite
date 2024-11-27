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

unsigned long long a[N], b[N], res[N];
unsigned long long * restrict p_a = a;
unsigned long long * restrict p_b = b;
int c[N], d[N];

void init() {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    c[i] = i;
    d[i] = i;
    p_a[i] = 0 ;
    p_b[i] = (unsigned long long)i * 2 ;
    res[i] = (unsigned long long)i * 2 ;
  }
}

void test(int indx) {
  int i;
  for(i = 0;i < N-1;i++ ) {
    p_a[c[i]+indx] = p_b[d[i]+indx];
  }
}

int MAINF() {
  int i;

  init ();
  test (1);

#pragma clang loop unroll(disable)
  for (i = 0;i < N;i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
