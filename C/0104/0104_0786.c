#include <stdio.h>
#include <stdlib.h>
#include <math.h>

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

void init(unsigned int * dest, unsigned int * res, unsigned int * src1) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0;
    res[i] = i + i;
    src1[i] = i;
  }
}

void test(unsigned int * restrict dest, unsigned int * restrict src1, unsigned int idx) {
  unsigned int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = src1[i] + (i*idx);
  }
}

int MAINF() {
  unsigned int dest[N], src1[N], res[N];
  int i;
  init (dest, res, src1);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, (unsigned int)i);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
