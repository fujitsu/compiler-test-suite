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

#define CONST_DISTANCE 8
#define INDX 1
long long a[N];
long long b[N];
long long * restrict p_a =a;
long long * restrict p_b =b;

void init(long long *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    p_a[i] = 0;
    p_b[i] = 0;
    res[i] = 0;
  }
#pragma clang loop vectorize(disable)
  for (i = 1; i < N; i+=CONST_DISTANCE) {
    p_b[i-INDX] = i;
    res[i-INDX] = i;
  }
}

void test() {
  int i;
  for(i = 1; i < N; i+=CONST_DISTANCE) {
    p_a[i-INDX] = p_b[i-INDX];
  }
}

int MAINF() {
  long long res[N];

  int i;
  init (res);
  for (i = 0; i < 2; i++) {
    test();
  }
#pragma clang loop unroll(disable)
  for (i = 0; i < N; i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
