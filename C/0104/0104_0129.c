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

void init(double _Complex *a, double _Complex *res, int *c, int ignore_pos) {
  int i,tmp;

  tmp = 0;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (1.0+1.0i)*i;
    if (i%4 != ignore_pos) {
      c[i] = 2;
      tmp = i;
    } else {
      c[i] = 1;
    }
  }
  *res = a[tmp];
}

double _Complex test(double _Complex * restrict a, int * restrict c) {
  int i;
  double _Complex tmp = 0.0+0.0i;
  for(i = 0;i < N; i++) {
    if (c[i] == 2) {
      tmp = a[i];
    }
  }
  return tmp;
}

int main() {
  double _Complex a[N], dest, res;
  int c[N];

  init (a,&res,c, 3); 
  dest = test (a,c);
  if (dest != res) {
    PRINT_NG;
  }

  init (a,&res,c, 0); 
  dest = test (a,c);
  if (dest != res) {
    PRINT_NG;
  }

  init (a,&res,c, 1); 
  dest = test (a,c);
  if (dest != res) {
    PRINT_NG;
  }

  init (a,&res,c, 2); 
  dest = test (a,c);
  if (dest != res) {
    PRINT_NG;
  }

  init (a,&res,c, 3);
  dest = test (a,c);
  if (dest != res) {
    PRINT_NG;
  }

  PRINT_OK;
  return 0;
}
