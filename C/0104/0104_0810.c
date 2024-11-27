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

long long c;

void init(long long * dest) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0;
    c = i;
  }
}

void test3(long long * restrict dest) {
  int i;
  for(i = 0;i < N; i++ ) {
    dest[i] = c;
  }
}

int MAINF() {
  long long dest[N];
  int i;
  init(dest);

  for (i = 0;i < 2;i++ ) {
    test3(dest);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != c) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
