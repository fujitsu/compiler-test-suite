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

#define CONST_DISTANCE 1

struct struct_1
{
  int a;
  int b;
  int c;
  int d;
  int e;
  int f;
  int g;
};

void init(struct struct_1 *st1, int *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    st1[i].a = 0;
    st1[i].b = 0;
    st1[i].c = 0;
    st1[i].d = 0;
    st1[i].e = 0;
    st1[i].f = 0;
    st1[i].g = 0;
    res[i] = 0;
  }
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i+=CONST_DISTANCE) {
    st1[i].b = i;
    res[i] = i;
  }
}

void test(struct struct_1 * restrict st1) {
  int i;
  for(i = 0; i < N; i+=CONST_DISTANCE) {
    st1[i].a = st1[i].b;
  }
}

int MAINF() {
  struct struct_1 st1[N];
  int res[N];
  int i;
  init (st1, res);
  for (i = 0; i < 2; i++) {
    test(st1);
  }
  for (i = 0; i < N; i++) {
    if (st1[i].a != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
