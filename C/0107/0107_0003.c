#include <stdio.h>
#include <stdlib.h>
#include <complex.h>





#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")


#define N 64

#ifndef ASM_ONLY
void init (float _Complex * restrict x, int * restrict c, int * restrict d) {
  int i;
  
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    if (i % 4 == 0) {
      c[i] = 2;
      d[i] = 2;
      x[i] = -2.0 -2.0fi;
    } else {
      c[i] = 1;
      d[i] = 1;
      x[i] = -3.0 - 5.0fi;
    }
  }
}
#endif

float _Complex test (float _Complex * restrict x, int * restrict c, int * restrict d) {
  int i = 0;
  float _Complex tmp1 = 555 + 777 * I;

  for (i = 0; i < N; i++) {
    if (c[i] == 2) {
        tmp1 = x[i];
    }
  }

  return tmp1;
}

#ifndef ASM_ONLY
void check(float _Complex res, float _Complex * restrict x, 
           int * restrict c, int * restrict d) {

  if (res == (-2.0 -2.0fi)) {
    PRINT_OK;
  } else {

    printf ("real = %lf, imag = %lf\n",  __real__ res, __imag__ res);
    PRINT_NG;
  }
  
  return;
}

int main() {
  float _Complex x[N];
  int c[N], d[N];
  float _Complex res;
  
  init (x, c, d);
  res = test (x, c, d);
  check (res, x, c, d);

  return 0;
}
#endif
