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

void init(int * dest, int * src1, int * src2, int * src3) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0;
    src1[i] = 1;
    src2[i] = i;
    src3[i] = i;
  }
}

void test(int * restrict dest, int * restrict src1, int * restrict src2, int * restrict src3) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = - src1[i] * src2[i] - src3[i];
  }
}

int MAINF() {
  int dest[N], src1[N], src2[N], src3[N];
  int i;
  init (dest, src1, src2, src3);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, src2, src3);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != i*-2) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
