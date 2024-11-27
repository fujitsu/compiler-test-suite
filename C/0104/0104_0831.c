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

void init(unsigned int * dest, unsigned int * a) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0;
    a[i] = i;
  }
}

void test5(unsigned int * restrict dest, unsigned int * restrict a, const unsigned int d) {
  int i;
  for(i = 0;i < N; i++ ) {
    dest[i] = a[i] + d;
  }
}

int MAINF() {
  unsigned int dest[N], a[N], d;
  int i;
  init(dest, a);
  d = 10;

  for (i = 0;i < 2;i++ ) {
    test5(dest, a, d);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != a[i]+d) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
