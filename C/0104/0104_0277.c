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

void init(unsigned long long * dest, unsigned long long * src1, unsigned long long * src2) {
  int i;

  dest[0] = 0ULL;
  src1[0] = 1ULL;
  src2[0] = 1ULL;

#pragma clang loop vectorize(disable)
  for (i = 1; i < N/2; i++) {
    dest[i] = 0ULL;
    src1[i] = (unsigned long long)i+1;
    src2[i] = (unsigned long long)i;
  }
#pragma clang loop vectorize(disable)
  for (i = N/2; i < N; i++) {
    dest[i] = 0ULL;
    src1[i] = (unsigned long long)i;
    src2[i] = (unsigned long long)i+1;
  }
}

void test(unsigned long long * restrict dest, unsigned long long * restrict src1, unsigned long long * restrict src2) {
  int i;
  for(i = 0;i < N;i++ ) {
    if (src1[i] <= src2[i]) {
      dest[i] = src1[i];
    } else {
      dest[i] = src2[i];
    }
  }
}

int MAINF() {
  unsigned long long dest[N], src1[N], src2[N];
  int i;
  init (dest, src1, src2);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, src2);
  }

  if (dest[0] != src1[0]) {
    PRINT_NG;
  }
  for (i = 1;i < N/2;i++) {
    if (dest[i] != src2[i]) {
      PRINT_NG;
    }
  }
  for (i = N/2;i < N;i++) {
    if (dest[i] != src1[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
