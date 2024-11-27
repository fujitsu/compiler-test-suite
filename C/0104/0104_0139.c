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

void init(double _Complex *a, double _Complex *res, double _Complex *dest, int *c, int ignore_pos) {
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
  *dest = 0.0+0.0i;
}

void test(double _Complex * restrict a, double _Complex * restrict b, int * restrict c) {
  int i;
  for(i = 0;i < N; i++) {
    if (c[i] == 2) {
      b[0] = a[i];
    }
  }
}

int main() {
  double _Complex a[N], dest, res;
  int c[N];

  init (a,&res,&dest,c, 0);
  test (a,&dest,c);
  if (dest != res) {
    PRINT_NG;
  }

  init (a,&res,&dest,c, 1);
  test (a,&dest,c);
  if (dest != res) {
    PRINT_NG;
  }

  init (a,&res,&dest,c, 2);
  test (a,&dest,c);
  if (dest != res) {
    PRINT_NG;
  }

  init (a,&res,&dest,c, 3);
  test (a,&dest,c);
  if (dest != res) {
    PRINT_NG;
  }

  PRINT_OK;
  return 0;
}
