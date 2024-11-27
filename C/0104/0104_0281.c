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

void init(unsigned long long * dest, unsigned long long * src1) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0ULL;
    src1[i] = (unsigned long long)(i%2);
  }
}

void test(unsigned long long * restrict dest, unsigned long long * restrict src1) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = !src1[i];
  }
}

int MAINF() {
  unsigned long long dest[N], src1[N];
  int i;
  init (dest, src1);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != (i+1)%2ULL) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
