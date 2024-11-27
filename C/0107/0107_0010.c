#include <stdio.h>
#include <complex.h>





#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")


#define N 128

void test(int * restrict c, float _Complex * restrict x) {
  int i;
  float _Complex tmp = 0;
  
  for(i = 0;i < N; i++) {
    if (c[i] == 2) {
      x[i] = conjf (x[i]);
    } 
  }
}

#ifndef ASM_ONLY
void init(int * restrict c, float _Complex * restrict x) {
  int i;
#pragma clang loop vectorize(disable)
  for(i = 0;i < N; i++) {
    c[i] = i%3;
    x[i] = 1 + I;
  }
}
void check(int * c, float _Complex * restrict x) {
  int i;

  for (i = 0; i < N; i++)
    if (c[i] == 2 && x[i] == 1 - I) {
      PRINT_OK;
    } else if (x[i] == 1 + I) {
      PRINT_OK;
    } else {

    printf ("real = %lf, imag = %lf\n", __real__ x[i], __imag__ x[i]);
    PRINT_NG;
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
