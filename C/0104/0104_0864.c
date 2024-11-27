#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 513
#else
#define N 512
#endif

void test(float _Complex * restrict dest) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = 1.0F + 1.0iF;
  }
}

int MAINF() {
  float _Complex dest[N];
  int i;
  for (i = 0;i < 2;i++ ) {
    test (dest);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != 1.0F + 1.0iF) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
