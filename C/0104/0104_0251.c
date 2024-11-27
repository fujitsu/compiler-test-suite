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
void init(unsigned long long * a, unsigned long long *b, unsigned long long *res, int indx, int *c) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = 0;
    b[i] = 0;
    res[i] = 0;
    c[i] = 0;
  }
#pragma clang loop vectorize(disable)
  for (i = 1; i < N; i+=CONST_DISTANCE) {
    b[i-indx] = i;
    res[i-indx] = i;
    c[i] = 1;
  }
}

void dummy(unsigned long long * a) {
  return;
}

void test(unsigned long long * restrict res, int indx, int *c) {
  int i;
  unsigned long long * restrict a;
  unsigned long long * restrict b;

  a = malloc(8*N);
  b = malloc(8*N);

  init (a, b, res, indx, c);
  for(i = 1; i < N; i+=CONST_DISTANCE) {
    if (c[i] == 1) {
      a[i-indx] = b[i-indx];
    }
  }

  dummy(a);
  for (i = 0; i < N; i++) {
    if (a[i] != res[i]) {
      PRINT_NG;
    }
  }
  free(a);
  free(b);
}

int MAINF() {
  unsigned long long res[N];
  int i;
  int c[N];

  for (i = 0; i < 2; i++) {
    test(res,1,c);
  }

  PRINT_OK;
  return 0;
}
