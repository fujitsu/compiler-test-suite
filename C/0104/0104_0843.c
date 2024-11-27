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

void init(double *a, double *b, double *res) {
  int i;
  *res = 0;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (double)i;
    b[i] = (double)i;
    if (i > N/2) {
      *res = *res + (double)i;
    }
  }
}

void test(double * restrict a, double * restrict b, double * restrict dest) {
  int i;
  double tmp = 0;
  for(i = 0;i < N; i++) {
    if (b[i] > N/2) {
      tmp = tmp + a[i];
    }
  }
  *dest = tmp;
}

int main() {
  double a[N],b[N];
  double dest, res;
  int i;
  for (i = 0; i < 2; i++) {
    init (a,b,&res);
    test (a,b,&dest);
  }
  if (dest != res) {
    PRINT_NG;
  }

  PRINT_OK;
  return 0;
}
