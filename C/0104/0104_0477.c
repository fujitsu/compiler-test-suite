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

#define equal_check(val1, val2) (fabs(creal(val1) - creal(val2))/fabs(creal(val1)) >= 1.0e-13 || fabs(cimag(val1) - cimag(val2))/fabs(cimag(val1)) >= 1.0e-13)

void init(long long int *a, long long int *b, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (i+1) * 2;
    b[i] = (i+1);
    mask[i] = 1;
  }
}

void test(double _Complex * restrict dest, long long int * restrict a, long long int * restrict b, int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      dest[i] = a[i] >= b[i] ? (1.0+1.0i) : (0.0+0.0i);
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    dest[i] = a[i] >= b[i] ? (1.0+1.0i) : (0.0+0.0i);
  }
#endif
}

int MAINF() {
  long long int a[N],b[N];
  double _Complex dest[N];
  int mask[N];
  int i;
  init (a,b,mask);
  for (i = 0;i < 2;i++ ) {
    test (dest,a,b,mask);
  }
  for (i = 0;i < N;i++) {
    if (equal_check(dest[i],(1.0+1.0i))) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
