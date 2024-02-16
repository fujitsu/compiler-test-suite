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

#define equal_check(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-13)

#ifndef ASM_ONLY
void init(double * dest, double * src, double * src2, double * res, int * x, int *y, double (*func)(double,double)) {
  int i;
  for (i = 0; i < N; i++) {
    dest[i] = 0.0;
    src[i] = (double)i;
    src2[i] = (double)i + 1.;
    res[i] = 0.0;
    x[i] = i;
    y[i] = 0;
  }
  for (i = 1; i < N-1; i=i+2) {
    y[i] = i;
    res[i] = func((double)i,(double)i + 1.);
  }
}
#endif

void test(double * restrict dest, double * restrict src, double * restrict src2, int * restrict x, int * restrict y) {
  int i;
  for(i = 0;i < N;i++ ) {
    if (x[i] == y[i]) {
      dest[i] = atan2(src[i],src2[i]);
    }
  }
}

#ifndef ASM_ONLY
int MAINF() {
  double dest[N], src[N], src2[N],res[N];
  int i,x[N],y[N];
  init (dest, src, src2, res, x, y, atan2);
  for (i = 0;i < 2;i++ ) {
    test (dest, src, src2, x, y);
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
