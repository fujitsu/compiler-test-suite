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

void init(long long int * dest, long long int * src1, int * src2) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0;
    src1[i] = i+1;
    if (i >= N/2) {
      	src2[i] = 1;
    } else {
	src2[i] = 0;
    }
  }
}

void test(long long int * restrict dest, long long int * restrict src1, int * restrict src2) {
  int i;
  for(i = 0;i < N;i++ ) {
    if(src2[i]==1) {
      dest[i] = src1[i];
    }
  }
}

int MAINF() {
  long long int dest[N], src1[N];
  int src2[N];
  int i;
  init (dest, src1, src2);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, src2);
  }
  for (i = 0;i < N;i++) {
    if (i >= N/2) {
      if (dest[i] != i+1) {
	PRINT_NG;
      }
    } else {
      if (dest[i] != 0) {
	PRINT_NG;
      }
    }
  }
  PRINT_OK;
  return 0;
}
