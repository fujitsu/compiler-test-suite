#include <stdio.h>
#include <stdlib.h>
#include <math.h>
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

#define equal_check(val1, val2) (val1 != val2)

void init(double _Complex *a, double _Complex *b, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = i * (1.0+1.0i) + (1.0+1.0i);
    b[i] = i * (1.0+1.0i);
    mask[i] = 1;
  }
}

void test(long double * restrict dest, double _Complex * restrict a, double _Complex * restrict b, int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      dest[i] = a[i] != b[i] ? 1.0L : 0.0L;
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    dest[i] = a[i] != b[i] ? 1.0L : 0.0L;
  }
#endif
}

int MAINF() {
  double _Complex a[N],b[N];
  long double dest[N];
  int mask[N];
  int i;
  init (a,b,mask);
  for (i = 0;i < 2;i++ ) {
    test (dest,a,b,mask);
  }
  for (i = 0;i < N;i++) {
    if (equal_check(dest[i],1.0L)) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
