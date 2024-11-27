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


void test(double *dest, long *a, long *b) {
  int i;
  for(i = 0; i < N; i++ ) {
    dest[i] = a[i] < b[i] ? 0.0 : 1.0;
  }
}

int MAINF() {
  int i;
  double dest[N];
  long a[N], b[N];
  for (i = 0; i < N; i++) {
    a[i] = i + 1L;
    b[i] = i;
  }

  test(dest, a, b);
  for (i = 0; i < N; i++) {
    if (dest[i] != 1.0) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
