#include <stdio.h>
#include <stdlib.h>
#include <math.h>

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

void init(long long * dest,long long * src,long long *res) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0;
    src[i] =  i;
    res[i] = -i;
  }
}

void test(long long * restrict dest,long long * restrict src) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = -src[i];
  }
}

int MAINF() {
  long long dest[N], src[N], res[N];
  int i;
  init (dest, src, res);
  for (i = 0;i < 2;i++ ) {
    test (dest, src);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != res[i]) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
