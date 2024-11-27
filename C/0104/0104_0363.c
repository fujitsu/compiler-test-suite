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

#define ERR_S 1.0E-6
#define equal_check(val1, val2) ( (val1==0 && fabs(val2)        <= ERR_S ) || \
				  fabs(val1 - val2)/fabs(val1) <= ERR_S)

void init(float * dest, float * src1, float * src2, float * src3) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    dest[i] = 0.0F;
    src1[i] = 1.0F;
    src2[i] = (float)i;
    src3[i] = (float)i;
  }
}

void test(float * restrict dest, float * restrict src1, float * restrict src2, float * restrict src3) {
  int i;
  for(i = 0;i < N;i++ ) {
    dest[i] = -(src1[i] * src2[i] + src3[i]);
  }
}

int MAINF() {
  float dest[N], src1[N], src2[N], src3[N];
  int i;
  init (dest, src1, src2, src3);
  for (i = 0;i < 2;i++ ) {
    test (dest, src1, src2, src3);
  }
  for (i = 0;i < N;i++) {
    if (!equal_check(dest[i],(float)i*-2.0F)) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
