#include <stdio.h>
#include <stdlib.h>
#include <complex.h>





#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")


#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#ifndef ASM_ONLY
void init (float _Complex * restrict x, float _Complex * restrict y, int * restrict c) {
  int i;
  
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    x[i] = 3.0 + 3.0fi;
    y[i] = 5.0 + 7.0fi;

    if (i % 4 == 0) {
      c[i] = 2;
    } else {
      c[i] = 1;
    }
  }
}
#endif

float _Complex test (float _Complex * restrict x, float _Complex * restrict y, int * restrict c) {
  int i = 0;
  float _Complex tmp;
  
  for (i = 0; i < N; i++) {
    if (c[i] == 2) {
      x[i] = x[i] * y[i];
      tmp = x[i];
    }
  }

  return tmp;
}

#ifndef ASM_ONLY
int main() {
  float _Complex x[N], y[N];
  float _Complex res;
  int c[N];
  
  init (x, y, c);
  res = test (x, y, c);

  if (__real__ res == -6.0 && __imag__ res == 36.0)
    PRINT_OK;
  else {

    printf ("real = %lf, imag = %lf\n", __real__ res, __imag__ res);
    PRINT_NG;
  }
  return 0;
}
#endif
