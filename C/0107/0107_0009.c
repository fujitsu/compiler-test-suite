#include <stdio.h>
#include <stdlib.h>
#include <complex.h>





#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")


#define N 64

float f1;
float f2;

#ifndef ASM_ONLY
void init (float _Complex * restrict x, float * restrict y, int * restrict c) {
  int i;
  
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    y[i] = -100.0;
    x[i] = 1 - I;
    if (i % 4 == 0) {
      c[i] = 2;
    } else {
      c[i] = 1;
    }
  }
}
#endif

void test (float _Complex * restrict x, float * restrict y, int * restrict c) {
  int i = 0;

  for (i = 0; i < N; i++) {
    if (c[i] == 2) {
      y[i] = (__real__ x[i]) * 3 + 1;
    }
  }
}

#ifndef ASM_ONLY
void check(float _Complex * restrict x, float * restrict y, int * restrict c) {
  int i = 0;
  for (i = 0; i < N; i++) {
    if (c[i] == 2 && y[i] == 4) {
      PRINT_OK;
    } else if (c[i] == 1 && y[i] == -100) {
      PRINT_OK;
    } else {

      printf ("x[%d] = %lf\n", i, x[i]);
      PRINT_NG;
    }
  }
}

int main() {
  float _Complex x[N];
  float y[N];
  int c[N];
  
  init (x, y, c);
  test (x, y, c);
  check (x, y, c);

  return 0;
}
#endif
