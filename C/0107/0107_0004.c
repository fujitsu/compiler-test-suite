#include <stdio.h>
#include <stdlib.h>
#include <complex.h>





#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")


#define N 64

float _Complex arr[1];

#ifndef ASM_ONLY
void init (float _Complex * restrict x, int * restrict c, int * restrict d) {
  int i;
  
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    if (i % 4 == 0) {
      c[i] = 2;
      d[i] = 12;
      x[i] = -2.0 + -3.0fi;
    } else {
      c[i] = 1;
      d[i] = 1;
      x[i] = -5.0 - 7.0fi;
    }
  }
}
#endif

void test (float _Complex * restrict x, int * restrict c, int * restrict d) {
  int i = 0;

  for (i = 0; i < N; i++) {
    if (c[i] == 2) {
      if (d[i] == 12) {
        arr[0] = x[i] * i;
      }
    }
  }
}

#ifndef ASM_ONLY
void check(float _Complex res, float _Complex * restrict x, 
           int * restrict c, int * restrict d) {

  if (res == (-2.0 -3.0fi) * 60) {
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
  
  init (x, c, d);
  test (x, c, d);
  check (arr[0], x, c, d);

  return 0;
}
#endif
