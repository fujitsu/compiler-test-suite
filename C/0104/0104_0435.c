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

void init(float _Complex *a, float _Complex *b, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = i * (1.0F+1.0iF) + (1.0F+1.0iF);
    b[i] = i * (1.0F+1.0iF);
    mask[i] = 1;
  }
}

void test(unsigned int * restrict dest, float _Complex * restrict a, float _Complex * restrict b, int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      dest[i] = a[i] != b[i] ? 1U : 2U;
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    dest[i] = a[i] != b[i] ? 1U : 2U;
  }
#endif
}

int MAINF() {
  float _Complex a[N],b[N];
  unsigned int dest[N];
  int mask[N];
  int i;
  init (a,b,mask);
  for (i = 0;i < 2;i++ ) {
    test (dest,a,b,mask);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != 1U) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
