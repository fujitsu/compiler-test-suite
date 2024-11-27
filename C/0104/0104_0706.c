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

#define CONST_DISTANCE 2

struct struct_1
{
  int a[N];
};

struct struct_2
{
  int b[N];
};

void init(struct struct_1 *st1, struct struct_2 *st2, int *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    st1->a[i] = 0;
    st2->b[i] = 0;
    res[i] = 0;
  }
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i+=CONST_DISTANCE) {
    st2->b[i] = i;
    res[i] = i;
  }
}

void test(struct struct_1 * restrict st1, struct struct_2 * restrict st2) {
  int i;
  for(i = 0; i < N; i+=CONST_DISTANCE) {
    st1->a[i] = st2->b[i];
  }
}

int MAINF() {
  struct struct_1 st1;
  struct struct_2 st2;
  int res[N];
  int i;
  init (&st1, &st2, res);
  for (i = 0; i < 2; i++) {
    test(&st1, &st2);
  }
  for (i = 0; i < N; i++) {
    if (st1.a[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
