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


void test(double *dest, double *a, double *b) {
  int i;
  for(i = 0; i < N; i++ ) {
    dest[i] = a[i] != b[i] ? 2L : 0L;
  }
}

int MAINF() {
  int i;
  double dest[N];
  double a[N], b[N];
  for (i = 0; i < N; i++) {
    a[i] = i + 1.0L;
    b[i] = i;
  }

  test(dest, a, b);
  for (i = 0; i < N; i++) {
    if (dest[i] != 2L) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
