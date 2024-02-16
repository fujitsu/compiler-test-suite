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
void init(float * dest, float * src, float * src2, float * res, float (*func)(float,float)) {
  int i;
  for (i = 0; i < N; i++) {
    dest[i] = 0.0F;
    src[i] = (float)i;
    src2[i] = (float)i + 1.;
    res[i] = func((float)i,(float)i + 1.);
  }
}
#endif

void test(float * restrict dest, float * restrict src, float * restrict src2) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = atan2f(src[i],src2[i]);
  }
}

#ifndef ASM_ONLY
int MAINF() {
  float dest[N], src[N], src2[N],res[N];
  int i;
  init (dest, src, src2, res, atan2f);
  for (i = 0;i < 2;i++ ) {
    test (dest, src, src2);
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
