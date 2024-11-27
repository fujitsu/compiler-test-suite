#include <stdio.h>
#include <stdlib.h>
#include <complex.h>





#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")


#define N 64

float f1;
float f2;

#ifndef ASM_ONLY
void init (float _Complex * restrict x, int * restrict c, int * restrict d) {
  int i;
  
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    if (i % 4 == 0) {
      c[i] = 2;
      d[i] = 2;
      x[i] = -2.0 + -2.0fi;
    } else {
      c[i] = 1;
      d[i] = 1;
      x[i] = -3.0 - 5.0fi;
    }
  }
}
#endif

void test (float _Complex * restrict x, int * restrict c, int * restrict d) {
  int i = 0;

  for (i = 0; i < N; i++) {
    if (c[i] == 2) {
      if (d[i] == 2) {
        f1 = __imag__ (x[i] * i);
        f2 = __real__ (x[i] * i);
      }
    }
  }
}

#ifndef ASM_ONLY
void check(float res1, float res2, float _Complex * restrict x, 
           int * restrict c, int * restrict d) {

  if (res1 == (-2.0) * 60) {
    PRINT_OK;
  } else {

    printf ("res1 = lf\n",  res1);
    PRINT_NG;
  }

  if (res2 == (-2.0) * 60) {
    PRINT_OK;
  } else {
    printf ("res2 = lf\n",  res2);
    PRINT_NG;
  }
    
  return;
}

int main() {
  float _Complex x[N];
  int c[N], d[N];
  
  init (x, c, d);
  test (x, c, d);
  check (f1, f2, x, c, d);

  return 0;
}
#endif
