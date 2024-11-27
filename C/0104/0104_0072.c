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

void init(long long * dest, float * src1, unsigned int *dummy) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0;
    dummy[i] = 0;
    src1[i] = i;
  }
}

void test(long long * restrict dest, float * restrict src1, unsigned int * restrict dummy) {
  int i;
  for(i = 0;i < N;i++ ) {
    dummy[i] = (unsigned int)src1[i];
    dest[i] = (long long)dummy[i];
  }
}

int MAINF() {
  long long dest[N];
  float src1[N];
  unsigned int dummy[N];
  int i;
  init (dest, src1, dummy);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, dummy);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != (long long)src1[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
