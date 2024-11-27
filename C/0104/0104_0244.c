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

int a[N];
int b[N];


void init(int *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = 0;
    b[i] = 0;
    res[i] = 0;
  }
#pragma clang loop vectorize(disable)
  for (i = 0; i < N-1; i+=CONST_DISTANCE) {
    b[i+1] = i;
    res[i+1] = i;
  }
}

void test() {
  int i;
  for(i = 0; i < N-1; i+=CONST_DISTANCE) {
    a[i+1] = b[i+1];
  }
}

int MAINF() {
  int res[N];

  int i;
  init (res);
  for (i = 0; i < 2; i++) {
    test();
  }
  for (i = 0; i < N; i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
