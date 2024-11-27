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

void init(float _Complex *a, float _Complex *res, float _Complex *dest, int *c, int pos1, int pos2) {
  int i,tmp;

  tmp = 0;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (1.0f+1.0if)*i;
    if (i%4 == pos1 || i%4 == pos2) {
      c[i] = 2;
      tmp = i;
    } else {
      c[i] = 1;
    }
  }
  *res = a[tmp];
  *dest = 0.0f+0.0if;
}

void test(float _Complex * restrict a, float _Complex * restrict b, int * restrict c) {
  int i;
  for(i = 0;i < N; i++) {
    if (c[i] == 2) {
      b[0] = a[i];
    }
  }
}

int main() {
  float _Complex a[N], dest, res;
  int c[N];

  init (a,&res,&dest,c, 0, 1);
  test (a,&dest,c);
  if (dest != res) {
    PRINT_NG;
  }

  init (a,&res,&dest,c, 0, 2);
  test (a,&dest,c);
  if (dest != res) {
    PRINT_NG;
  }

  init (a,&res,&dest,c, 1, 2);
  test (a,&dest,c);
  if (dest != res) {
    PRINT_NG;
  }

  init (a,&res,&dest,c, 0, 3);
  test (a,&dest,c);
  if (dest != res) {
    PRINT_NG;
  }

  init (a,&res,&dest,c, 1, 3);
  test (a,&dest,c);
  if (dest != res) {
    PRINT_NG;
  }

  init (a,&res,&dest,c, 2, 3);
  test (a,&dest,c);
  if (dest != res) {
    PRINT_NG;
  }

  PRINT_OK;
  return 0;
}
