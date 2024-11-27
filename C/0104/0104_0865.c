#include <stdio.h>
#include <stdlib.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 513
#else
#define N 512
#endif

void test(int * restrict dest) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = 1;
  }
}

int MAINF() {
  int dest[N];
  int i;
  for (i = 0;i < 2;i++ ) {
    test (dest);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != 1) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
