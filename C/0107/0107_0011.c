#include <stdio.h>
#include <complex.h>
#include <math.h>





#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")


#define N 64

void test(int * restrict c, float _Complex * restrict x) {
  int i;

  for(i = 0;i < N; i++) {
    if (c[i] == 2) {
      x[i] = x[i] / 2;
    } 
  }
}

#ifndef ASM_ONLY
void init(int * restrict c, float _Complex * restrict x) {
  int i;
#pragma clang loop vectorize(disable)
  for(i = 0;i < N; i++) {
    c[i] = i % 3;
    x[i] = 2 + 2 * I;
  }
}
void check(int * c, float _Complex * restrict x) {
  int i;
  float _Complex y = 1 + 1 * I;

  #pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++){
    if (c[i] == 2 && x[i] == y) {
      PRINT_OK;
    } else if (x[i] == y * 2){
      PRINT_OK;
    } else {

      printf ("%d, real = %lf, imag = %lf\n", i,  __real__ x[i], __imag__ x[i]);
      PRINT_NG;
    }
  }
}

int main(void) {
  int c[N];
  float _Complex x[N];

  init(c, x);
  test(c, x);
  check(c, x);
  return 0;
}
#endif
