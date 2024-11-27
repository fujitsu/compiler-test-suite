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

void init(long long * dest, long long * a) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0;
    a[i] = i;
  }
}

void test2(long long * restrict dest, long long * restrict a) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = a[i] + 1;
  }
}

int MAINF() {
  long long dest[N], a[N];
  int i;
  init(dest, a);

  for (i = 0;i < 2;i++ ) {
    test2(dest, a);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != a[i]+1) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
