#include <stdio.h>
#include <complex.h>





#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")


#define N 128

float _Complex test(int * restrict c, float _Complex * restrict x) {
  int i;
  float _Complex tmp = 0;
  
  for(i = 0; i < N; i++) {
    
      tmp += x[i];
    
  }

  return tmp;
}

#ifndef ASM_ONLY
void init(int * restrict c, float _Complex * restrict x) {
  int i;
#pragma clang loop vectorize(disable)
  for(i = 0;i < N; i++) {
    c[i] = i%3;
    x[i] = 1 + 1 * I;
  }
}
void check(int * c, float _Complex res) {
  int i = 0;
  int tmp = 0;
  
#pragma clang loop vectorize(disable)  
  for (i = 0; i < N; i++){
    if (c[i] == 2)
      tmp ++;
  }
  
  if (res == tmp + tmp * I) {
    PRINT_OK;
  } else {

    printf ("real = %lf, imag = %lf, but %d\n", __real__ res, __imag__ res, tmp);
    PRINT_NG;
  }
}

int main(void) {
  int c[N];
  float _Complex x[N];
  float _Complex res;
  init(c, x);
  res = test(c, x);
  check(c, res);
  return 0;
}
#endif
