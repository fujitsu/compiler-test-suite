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
void init (float _Complex * restrict x, float _Complex * restrict y, int * restrict c) {
  int i;
  
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    x[i] = 3.0 + 3.0fi;
    y[i] = 5.0 + 7.0fi;

    if (i % 4 == 0) {
      c[i] = 2;
    } else {
      c[i] = 1;
    }
  }
}
#endif

void test (float _Complex * restrict x, float _Complex * restrict y, int * restrict c) {
  int i = 0;

  for (i = 0; i < N; i++) {
    if (c[i] == 2) {
      x[i] = x[i] * 2;
    } else {
      x[i] = y[i];
    }
  }
}

#ifndef ASM_ONLY
void check(float _Complex * restrict x, float _Complex * restrict y, int * restrict c) {
  int i = 0;
  int flag = 0;

#pragma clang loop vectorize(disable)  
  for (i = 0; i < N; i++) {
    if (c[i] == 2 && x[i] == 6.0 + 6.0 * I)
      flag = flag;
    else if (c[i] == 1 && x[i] == y[i])
      flag = flag;
    else {

      printf ("i = %d, real = %lf, imag = %lf\n", i, __real__ x[i],  __imag__ x[i]);
      flag = 1;
    }
  }

  if (flag == 1)
    PRINT_NG;
  else
    PRINT_OK;
}

int main() {
  float _Complex x[N], y[N];
  int c[N];
  
  init (x, y, c);
  test (x, y, c);
  check (x, y, c);

  return 0;
}
#endif
