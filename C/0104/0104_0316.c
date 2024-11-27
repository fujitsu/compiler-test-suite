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

void init(unsigned * dest, unsigned * src1) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0U;
    src1[i] = (unsigned)i;
  }
}

void test(unsigned * restrict dest, unsigned * restrict src1) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = -(src1[i]);
  }
}

int MAINF() {
  unsigned dest[N], src1[N];
  int i;
  init (dest, src1);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != -(unsigned)i) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
