#include <stdio.h>
#include <stdlib.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

void init(double *a, double *res, double *dest) {
  int i;
  *res = 5;
  *dest = 10;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (double)i+5;
  }
}

void test(double * restrict a, double * restrict dest) {
  int i;
  double tmp;

  tmp = *dest;
  for(i = 0;i < N; i++) {
    if (tmp > a[i]) {
      tmp = a[i];
    }
  }
  *dest = tmp;
}

int main() {
  double a[N];
  double dest, res;
  int i;
  for (i = 0; i < 2; i++) {
    init (a,&res, &dest);
    test (a,&dest);
  }

  if (dest != res) {
    PRINT_NG;
  }

  PRINT_OK;
  return 0;
}
