#include <stdio.h>
#include <stdlib.h>

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

void init(float * dest) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0;
  }
}

void test42(float * restrict dest, float * restrict b) {
  int i;
  for(i = 0;i < N; i++ ) {
    dest[i] = *b;
  }
}

int MAINF() {
  float dest[N], b;
  int i;
  init(dest);
  b = 1;

  for (i = 0;i < 2;i++ ) {
    test42(dest, &b);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != b) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
