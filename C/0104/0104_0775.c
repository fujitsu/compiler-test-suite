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

void init(int *a, int *b, int *c, int *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = i;
    if (i > N/2) {
      res[i] = i + 2;
    } else {
      res[i] = i - 3;
    }      
  }
}

void test(int * restrict a, int * restrict b, int * restrict c) {
  int i;
  for(i = 0; i < N; i++) {
    if (c[i] > N/2 && c[i] != N/2) {
      a[i] = b[i] + 2;
    } else {
      a[i] = b[i] - 3;
    }
  }
}

int MAINF() {
  int a[N],b[N],c[N],res[N];
  int i;
  init (a,b,c,res);
  for (i = 0; i < 2; i++ ) {
    test (a,b,c);
  }
  for (i = 0;i < N;i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
