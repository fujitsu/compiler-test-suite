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

void test(float * dest, float _Complex * a, float _Complex * b) {
  int i;
  for(i = 0; i < N; i++ ) {
    dest[i] = a[i] != b[i] ? 1.0F : 0.0F;
  }
}

int MAINF() {
  int i;
  float _Complex a[N],b[N];
  float dest[N];
  for (i = 0; i < N; i++) {
    a[i] = i * (1.0F+1.0iF) + (2.0F+2.0iF);
    b[i] = i * (1.0F+1.0iF);
  }
  test(dest,a,b);
  for (i = 0;i < N;i++) {
    if (dest[i] != 1.0F) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
