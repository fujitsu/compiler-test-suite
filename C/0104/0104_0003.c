#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <complex.h>


#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main

#if defined(ROLL_TIMES)
#define N ((ROLL_TIMES>40)?ROLL_TIMES:40)
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#define equal_check(val1, val2) (fabsf(val1 - val2)/fabsf(val1) >= 1.0e-6F)


void init(float *a, float _Complex *b, float *res, int *mask, float (*func)(float _Complex)) {
  int i;
  typedef union ld64 {
    unsigned ull;
    float d;
  } uld64;
  static const uld64 pzero = {0x0U};
  static const uld64 mzero = {0x80000000U};

  union r2c {
    float x[2];
    float _Complex fc;
  } xfc;

#define SET_COMPLEX_VAL(indx, val1, val2) xfc.x[0] = val1; xfc.x[1] = val2; b[indx] = xfc.fc; res[indx] = func(xfc.fc)

  SET_COMPLEX_VAL(0, pzero.d, pzero.d);
  SET_COMPLEX_VAL(1, mzero.d, pzero.d);
  SET_COMPLEX_VAL(2, pzero.d, mzero.d);
  SET_COMPLEX_VAL(3, mzero.d, mzero.d);

  SET_COMPLEX_VAL(4, 1.0,     pzero.d);
  SET_COMPLEX_VAL(5, pzero.d, 1.0);
  SET_COMPLEX_VAL(6, -1.0,    pzero.d);
  SET_COMPLEX_VAL(7, pzero.d, -1.0);

  SET_COMPLEX_VAL(8,   1.0,  1.0);
  SET_COMPLEX_VAL(9,  -1.0, -1.0);
  SET_COMPLEX_VAL(10,  1.0, -1.0);
  SET_COMPLEX_VAL(11, -1.0,  1.0);

  SET_COMPLEX_VAL(12,  10.1,  3.1);
  SET_COMPLEX_VAL(13, -10.1,  3.1);
  SET_COMPLEX_VAL(14,  10.1, -3.1);
  SET_COMPLEX_VAL(15, -10.1, -3.1);

  SET_COMPLEX_VAL(16,  1.1,  3.1);
  SET_COMPLEX_VAL(17, -1.1,  3.1);
  SET_COMPLEX_VAL(18,  1.1, -3.1);
  SET_COMPLEX_VAL(19, -1.1, -3.1);

#if defined(__x86_64__)
  SET_COMPLEX_VAL(20,  1.0,  pzero.d);
  SET_COMPLEX_VAL(21,  1.0,  pzero.d);
  SET_COMPLEX_VAL(22,  1.0,  pzero.d);
  SET_COMPLEX_VAL(23,  1.0,  pzero.d);

  SET_COMPLEX_VAL(24,  1.0,  pzero.d);
  SET_COMPLEX_VAL(25,  1.0,  pzero.d);
  SET_COMPLEX_VAL(26,  1.0,  pzero.d);
  SET_COMPLEX_VAL(27,  1.0,  pzero.d);
#else

  SET_COMPLEX_VAL(20,  1.0,  pzero.d);
  SET_COMPLEX_VAL(21,  1.0,  pzero.d);
  SET_COMPLEX_VAL(22,  1.0,  pzero.d);
  SET_COMPLEX_VAL(23,  1.0,  pzero.d);


  SET_COMPLEX_VAL(24,  1.0,  pzero.d);
  SET_COMPLEX_VAL(25,  1.0,  pzero.d);
  SET_COMPLEX_VAL(26,  1.0,  pzero.d);
  SET_COMPLEX_VAL(27,  1.0,  pzero.d);
#endif

  SET_COMPLEX_VAL(28,  2e38,  4e-38);
  SET_COMPLEX_VAL(29, -2e38,  4e-38);
  SET_COMPLEX_VAL(30,  2e38, -4e-38);
  SET_COMPLEX_VAL(31, -2e38, -4e-38);

  SET_COMPLEX_VAL(32,  4e-38,  2e38);
  SET_COMPLEX_VAL(33, -4e-38,  2e38);
  SET_COMPLEX_VAL(34,  4e-38, -2e38);
  SET_COMPLEX_VAL(35, -4e-38, -2e38);

  SET_COMPLEX_VAL(36,  3.0e38,  3.0e38);
  SET_COMPLEX_VAL(37, -3.0e38,  3.0e38);
  SET_COMPLEX_VAL(38,  3.0e38, -3.0e38);
  SET_COMPLEX_VAL(39, -3.0e38, -3.0e38);

#pragma clang loop vectorize(disable)  
for (i = 0; i < N; i++) {
    a[i] = 0.0F;
    mask[i] = 1;
  }

#pragma clang loop vectorize(disable)  
for (i = 40; i < N; i++) {
    SET_COMPLEX_VAL(i,  1.0,  pzero.d);
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
  float a[N],res[N];
  float _Complex b[N];
  int mask[N];
  int i;
  init (a,b,res,mask,cabsf);
  for (i = 0;i < 2;i++ ) {
    test (a,b,mask);
  }
  for (i = 0;i < N;i++) {
    if (equal_check(a[i], res[i])) {
      printf("%d : %e : %e : ", i, a[i], res[i]);
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}

