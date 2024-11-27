#include <stdio.h>
#include <math.h>

#define LENGTH 	10000

double FMA(double * restrict a, double * restrict b, double * restrict c);

int main()
{
  int i;
  double a[LENGTH], b[LENGTH], c[LENGTH], r = 0.0;
  const double base = 1742.48276;
  const double margin = 1.0e-5;

  for (i = 0; i < LENGTH; ++i) {
    a[i] = 0.000017 * i;
    b[i] = 0.000034 * i;
    c[i] = 0.000031 * i;
  }

  r = FMA(a, b, c);

  if (fabs(r - base) >= margin) {
    printf("NG\n");
  }
  else {
    printf("OK\n");
  }

  return 0;
}

double FMA(double * restrict a, double * restrict b, double * restrict c)
{
  int i;
  double r = 0.0;

#pragma omp parallel for reduction(+:r)
  for (i = 0; i < LENGTH; ++i) {
    r += a[i] * b[i] + c[i];
  }

  return r;
}
