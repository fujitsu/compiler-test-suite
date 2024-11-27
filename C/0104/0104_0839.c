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

void init(long long *a, long long *res) {
  int i;
  *res = 0;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (long long)i;
    *res = *res + (long long)i;
  }
}

void test(long long * restrict a, long long * restrict dest) {
  int i;
  long long tmp = 0;
  for(i = 0;i < N; i++) {
    tmp = tmp + a[i];
  }
  *dest = tmp;
}

int MAINF() {
  long long a[N];
  long long dest, res;
  int i;
  for (i = 0; i < 2; i++) {
    init (a,&res);
    test (a,&dest);
  }
  for (i = 0;i < N;i++) {
    if (dest != res) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
