#include <stdio.h>
#include <stdlib.h>

#define MAX1(a,b) (a > b) ? a: b
#define MAX2(a,b) (a >= b) ? a: b

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

void init(unsigned long long * dest, unsigned long long * src1, unsigned long long * src2) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0ULL;
    src1[i] = (unsigned long long)i+10ULL;
    src2[i] = (unsigned long long)i+8ULL;
  }
}

void test1(unsigned long long * restrict dest, unsigned long long * restrict src1, unsigned long long * restrict src2) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = MAX1(src1[i], src2[i]);
  }
}

void test2(unsigned long long * restrict dest, unsigned long long * restrict src1, unsigned long long * restrict src2) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = MAX2(src1[i], src2[i]);
  }
}

int MAINF() {
  unsigned long long dest[N], src1[N], src2[N];
  int i;
  init (dest, src1, src2);
  for (i = 0;i < 2;i++ ) {
    test1 (dest, src1, src2);
    test2 (dest, src1, src2);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != src1[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
