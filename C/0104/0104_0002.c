#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <complex.h>


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
#define equal_check(val1, val2) ( (val1==0 && fabs(val2)       <= ERR_S ) || \
				  fabs(val1 - val2)/fabs(val1) <= ERR_S)


void init(float *a,float _Complex *b,float *res, int *mask) {
  int i;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = 0.0F;
    res[i] = sqrtf((float)i * (float)i * 2.0F);
    if ( i < N/2) {
      b[i] = ((float)i) * (1.0F+1.0iF);
    } else {
      b[i] = ((float)-i) * (1.0F+1.0iF);
    }
    mask[i] = 1;
  }
}


void test(float * restrict a,float _Complex * restrict b, int * restrict mask) {
  int i;
#ifdef HAS_MASK
  for(i = 0;i < N;i++ ) {
    if (mask[i] == 1) {
      a[i] = cabsf(b[i]);
    }
  }
#else
  for(i = 0;i < N;i++ ) {
    a[i] = cabsf(b[i]);
  }
#endif
}

int MAINF() {
  float a[N], res[N];
  float _Complex b[N];
  int mask[N];
  int i;
  init (a,b,res,mask);
  for (i = 0;i < 2;i++ ) {
    test (a,b,mask);
  }
  for (i = 0;i < N;i++) {
    if (!equal_check(a[i], res[i])) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
