#include <stdio.h>
#include <stdlib.h>

#define MIN1(a,b) (a < b) ? a: b
#define MIN2(a,b) (a <= b) ? a: b

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

void init(long long * dest, long long * src1, long long * src2) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0LL;
    src1[i] = (long long)i;
    src2[i] = (long long)i-2LL;
  }
}

void test1(long long * restrict dest, long long * restrict src1, long long * restrict src2) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = MIN1(src1[i], src2[i]);
  }
}

void test2(long long * restrict dest, long long * restrict src1, long long * restrict src2) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = MIN2(src1[i], src2[i]);
  }
}

int MAINF() {
  long long dest[N], src1[N], src2[N];
  int i;
  init (dest, src1, src2);
  for (i = 0;i < 2;i++ ) {
    test1 (dest, src1, src2);
    test2 (dest, src1, src2);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != src2[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
