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

#define CONST_DISTANCE 7
void init(int * a, int *b, int *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = 0;
    b[i] = 0;
    res[i] = 0;
  }
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i+=CONST_DISTANCE) {
    b[i] = i;
    res[i] = i;
  }
}

void test(int * restrict a, int * restrict b) {
  int i;
  for(i = 0; i < N; i+=CONST_DISTANCE) {
    a[i] = b[i];
  }
}

int MAINF() {
  int res[N], a[N];
  int b[N];
  int i;
  init (a, b, res);
  for (i = 0; i < 2; i++) {
    test(a, b);
  }
  for (i = 0; i < N; i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
