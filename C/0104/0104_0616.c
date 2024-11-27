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

void init(unsigned * dest, unsigned * src1, unsigned * src2) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0U;
    src1[i] = (unsigned)i + 1U;
    src2[i] = (unsigned)i;
  }
}

void test(unsigned * restrict dest, unsigned * restrict src1, unsigned * restrict src2) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = !(src1[i] < src2[i]) ? 1U : 2U;
  }
}

int MAINF() {
  unsigned dest[N], src1[N], src2[N];
  int i;
  init (dest, src1, src2);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, src2);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != 1U) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
