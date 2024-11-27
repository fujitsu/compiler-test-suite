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

void init(unsigned long * dest, unsigned long * src1, unsigned long * src2, unsigned long * src3) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0ULL;
    src1[i] = 1ULL;
    src2[i] = (unsigned long)i;
    src3[i] = (unsigned long)i;
  }
}

void test(unsigned long * restrict dest, unsigned long * restrict src1, unsigned long * restrict src2, unsigned long * restrict src3) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = src1[i] * src2[i] + src3[i];
  }
}

int MAINF() {
  unsigned long dest[N], src1[N], src2[N], src3[N];
  int i;
  init (dest, src1, src2, src3);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, src2, src3);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != (unsigned long)i*2ULL) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
