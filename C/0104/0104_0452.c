#include <stdio.h>
#include <stdlib.h>
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

void test(float _Complex * dest, float * a, float * b, double _Complex c) {
  int i;
  float _Complex tmp1,tmp2;
  tmp1 = tmp2 = (0.0F+0.0iF);
  for(i = 0; i < N; i++ ) {
    if (a[i] != b[i])
      tmp1 = (1.0F+1.0iF);
    else
      tmp2 = c;
    dest[i] = tmp1 + tmp2;
  }
}

int MAINF() {
  int i;
  float a[N],b[N];
  float _Complex dest[N];
  double _Complex c = (0.0F+0.0iF);
  for (i = 0; i < N; i++) {
    a[i] = i * (1.0F+1.0iF) + (2.0F+2.0iF);
    b[i] = i * (1.0F+1.0iF);
  }
  test(dest,a,b,c);
  for (i = 0;i < N;i++) {
    if (dest[i] != 1.0F+1.0iF) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}
