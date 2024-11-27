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

void init(int ** dest, int ** src1, int *src2, int **res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    src1[i] = &src2[i];
  }
  *dest = 0;
  *res = &src2[N];
}

void test(int ** restrict dest, int ** restrict src1) {
  int i;
  for(i = 0;i < N; i++ ) {
    *dest = src1[i];
  }
}

int MAINF() {
  int *dest, *src1[N], *res;
  int src2[N];
  int i;
  init (&dest, src1, src2, &res);
  for (i = 0;i < 2;i++ ) {
    test (&dest, src1);
  }
  if (dest == res) {
    PRINT_NG;
  }
  PRINT_OK;
  return 0;
}
