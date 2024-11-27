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

void init(long * dest, long * src1, long * src2, long * src3) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0LL;
    src1[i] = 1LL;
    src2[i] = (long)i;
    src3[i] = (long)i;
  }
}

void test(long * restrict dest, long * restrict src1, long * restrict src2, long * restrict src3) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = - src1[i] * src2[i] + src3[i];
  }
}

int MAINF() {
  long dest[N], src1[N], src2[N], src3[N];
  int i;
  init (dest, src1, src2, src3);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, src2, src3);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != 0LL) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
