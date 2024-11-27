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
void init (float _Complex * restrict x, int * restrict c, int * restrict d) {
  int i;
  
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    if (i % 4 == 0) {
      c[i] = 2;
      x[i] = -100.0 + -200.0fi;
    } else {
      c[i] = 1;
      x[i] = -3.0 - 5.0fi;
    }
  }
}
#endif

float _Complex test (float _Complex * restrict x, int * restrict c, int * restrict d) {
  int i = 0;
  float _Complex tmp;
  
  for (i = 0; i < N; i++) {
    if (c[i] == 2) {
      if (d[i] == 2) {
        tmp = x[i];
      }
    }
  }

  return tmp;
}

#ifndef ASM_ONLY
void check(float _Complex res, float _Complex * restrict x, 
           int * restrict c, int * restrict d) {
  int i = 0;
  int flag = 0;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    if (c[i] == 2 && d[i] == 2) {
      if (__real__ x[i] == -100.0 && __imag__ x[i] == -200.0)
        flag = flag;
      else
        flag = -1;
    } else if (c[i] == 1 && d[i] == 1) {
      if (__real__ x[i] == -3.0 && __imag__ x[i] == -5.0)
        flag = flag;
      else
        flag = -1;
    }
  }

  if (flag == -1)
    PRINT_NG;
  else
    PRINT_OK;
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
