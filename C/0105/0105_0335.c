#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

#define LENGTH 	10000

void eval(double * restrict r, double * restrict a, double * restrict b);

int main()
{
  int i;
  double a[LENGTH], b[LENGTH], r[LENGTH], ans;
  const double base = 3407396198.8977;
  const double margin = 1.0e-4;

  for (i = 0; i < LENGTH; ++i) {
    a[i] = 0.10111 * i;
    b[i] = 0.10113 * i;
  }

  eval(r, a, b);

  for (i = 0; i < LENGTH; ++i) {
    ans += r[i];
  }

  if (fabs(ans - base) >= margin) {
    printf("NG\n");
  }
  else {
    printf("OK\n");
  }

  return 0;
}

void eval(double * restrict r, double * restrict a, double * restrict b)
{
  int i;

#pragma omp parallel for
  for (i = 0; i < LENGTH; ++i) {
    r[i] = a[i] * b[i] - 0.101 * b[i];
  }
}
