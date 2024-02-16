#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#define MAINF MAIN__
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main
#endif

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#define equal_check(val1, val2) (fabsf(val1 - val2)/fabsf(val1) >= 1.0e-6F)

#ifndef ASM_ONLY
void init(float * dest, float * src, float * res, float (*func)(float), int * x, int * y) {
  int i;
  for (i = 0; i < N; i++) {
    dest[i] = 0.0F;
    src[i] = (float)i;
    res[i] = 0.0F;
    x[i] = i;
    y[i] = 0;
  }
  for (i = 0; i < N; i=i+2) {
    y[i] = i;
    res[i] = func((float)i);
  }
}
#endif

void test(float * restrict dest, float * restrict src, int * restrict x, int * restrict y) {
  int i;
  for(i = 0;i < N;i++ ) {
    if (x[i] == y[i]) {
      dest[i] = sinf(src[i]);
    }
  }
}

#ifndef ASM_ONLY
int MAINF() {
  float dest[N], src[N], res[N];
  int i,x[N],y[N];
  init (dest, src, res, sinf, x, y);
  for (i = 0;i < 2;i++ ) {
    test (dest, src, x, y);
  }
  for (i = 0;i < N;i++) {
    if (equal_check(dest[i],res[i])) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
#endif
