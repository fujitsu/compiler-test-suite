#include <stdio.h>
#include <complex.h>





#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")


#define N 128

float _Complex test(int * restrict c) {
  int i;
  float _Complex tmp = 0;
  
  for(i = 0;i < N; i++) {
    if (c[i] == 2) {
      tmp += i;
    } 
  }

  return tmp;
}

#ifndef ASM_ONLY
void init(int * restrict c) {
  int i;
#pragma clang loop vectorize(disable)
  for(i = 0;i < N; i++) {
    c[i] = i%3;
  }
}
void check(int * c, float _Complex res) {
  int i;
  int tmp;
  for (i = 0; i < N; i++)
    if (c[i] == 2)
      tmp += i;
  
  if (res == tmp) {
    PRINT_OK;
  } else {

    printf ("real = %lf, imag = %lf\n", __real__ res, __imag__ res);
    PRINT_NG;
  }
}

int main(void) {
  int c[N];
  float _Complex res;
  init(c);
  res = test(c);
  check(c, res);
  return 0;
}
#endif
