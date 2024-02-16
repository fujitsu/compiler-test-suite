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

#ifndef ASM_ONLY
void init(double * dest, double * src1, double * src2) {
  int i;
  for (i = 0; i < N; i++) {
    dest[i] = 0;
    if (i == 0) {
      src1[i] = 4.4;
      src2[i] = 3.3;
    } else {
      src1[i] = 2.0*((double)i+1.0)+1.0;
      src2[i] = (double)i+1.0;
    }
  }
}
#endif

void test(double * restrict dest, double * restrict src1, double * restrict src2) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = fmod(src1[i], src2[i]);
  }
}

#ifndef ASM_ONLY
int MAINF() {
  double dest[N], src1[N], src2[N];
  int i;
  init (dest, src1, src2);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, src2);
  }
  for (i = 0;i < N;i++) {
    if (dest[i] != fmod(src1[i], src2[i])) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
#endif
