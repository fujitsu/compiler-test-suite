#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

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

void init(signed short * dest, signed short * src1, signed short * src2) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0;
    src1[i] = i;
    src2[i] = i-2;
  }
}

void test1(signed short * restrict dest, signed short * restrict src1, signed short * restrict src2) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = MAX1(src1[i], src2[i]);
  }
}

void test2(signed short * restrict dest, signed short * restrict src1, signed short * restrict src2) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = MAX2(src1[i], src2[i]);
  }
}

int MAINF() {
  signed short dest[N], src1[N], src2[N];
  int i;
  init (dest, src1, src2);
  for (i = 0;i < 2;i++ ) {
    test1 (dest, src1, src2);
    test2 (dest, src1, src2);
  }

  if (N > SHRT_MAX) { 
    for (i = 0;i <= SHRT_MAX;i++) {
      if (dest[i] != src1[i]) {
	PRINT_NG;
      }
    }
  } else {
    for (i = 0;i < N;i++) {
      if (dest[i] != src1[i]) {
	PRINT_NG;
      }
    }
  }
  PRINT_OK;
  return 0;
}
