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

void init(float _Complex *a, float _Complex *res, int *c) {
  int i;

#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (1.0f+1.0if)*i;
    c[i] = 2;
  }
  *res = a[N-1];
}

float _Complex test(float _Complex * restrict a, int * restrict c) {
  int i;
  float _Complex tmp = 0.0f+0.0if;
  for(i = 0;i < N; i++) {
    if (c[i] == 2) {
      tmp = a[i];
    }
  }
  return tmp;
}

int main() {
  float _Complex a[N], dest, res;
  int c[N];

  init (a,&res,c);
  dest = test (a,c);
  if (dest != res) {
    PRINT_NG;
  }

  PRINT_OK;
  return 0;
}
