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

void init(double _Complex *a, double _Complex *b, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = i * (1.0+1.0i) + (1.0+1.0i);
    b[i] = i * (1.0+1.0i);
    mask[i] = 1;
  }
}

short s1 = 1;
short s2 = 2;
void test(short int * restrict dest, double _Complex * restrict a, double _Complex * restrict b, int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      dest[i] = a[i] != b[i] ? s1 : s2;
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    dest[i] = a[i] != b[i] ? s1 : s2;
  }
#endif
}

int MAINF() {
  double _Complex a[N],b[N];
  short int dest[N];
  int mask[N];
  int i;
  init (a,b,mask);
  for (i = 0;i < 2;i++ ) {
    test (dest,a,b,mask);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != 1) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}