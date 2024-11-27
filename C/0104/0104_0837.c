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

void init(unsigned long long * dest, unsigned long long * a) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0;
    a[i] = i;
  }
}

void test5(unsigned long long * restrict dest, unsigned long long * restrict a, const unsigned long long d) {
  int i;
  for(i = 0;i < N; i++ ) {
    dest[i] = a[i] + d;
  }
}

int MAINF() {
  unsigned long long dest[N], a[N], d;
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
