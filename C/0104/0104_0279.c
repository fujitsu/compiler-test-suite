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

void init(long long * dest, long long * src1) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0LL;
    src1[i] = (long long)(i%2);
  }
}

void test(long long * restrict dest, long long * restrict src1) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = !src1[i];
  }
}

int MAINF() {
  long long dest[N], src1[N];
  int i;
  init (dest, src1);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != (i+1)%2LL) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
