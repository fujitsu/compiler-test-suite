#include <stdio.h>
#include <stdlib.h>
#include <complex.h>





#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")


#define N 64

void test (float _Complex * restrict x, int * c) {
  int i = 0;
  for (i = 0; i < N; i++) {
    if (c[i] == 2){
      x[i] = i + I;
    }
  }
}

#ifndef ASM_ONLY
void init (float _Complex * restrict x, int * restrict c) {
  int i = 0;

#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    x[i] = -100 * i;
    
    if (i % 3 == 0 ) {
      c[i] = 2;
    } else {
      c[i] = 1;
    }
  }
}

void check(float _Complex * restrict x, int * restrict c) {
  int i = 0;
  
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    if (c[i] == 2 && x[i] == i + I) {
      PRINT_OK;
    } else if (c[i] == 1 && x[i] == i * (-100)) {
      PRINT_OK;
    } else {

      printf ("x[%d] = %lf + %lf * I\n", i, __real__ x[i], __imag__ x[i]);
      PRINT_NG;
    }
  }
}

int main() {
  float _Complex x[N];
  int c[N];
  
  init (x, c);
  test (x, c);
  check (x, c);

  return 0;
}
#endif

