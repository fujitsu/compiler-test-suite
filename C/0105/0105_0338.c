#include <stdio.h>
#include <math.h>

#define LENGTH 	10000

void FMA(double *r, double a[LENGTH], double b[LENGTH], double c[LENGTH]);

int main()
{
  int i;
  double a[LENGTH], b[LENGTH], c[LENGTH], r[LENGTH], ans;
  const double base = 1742.48276;
  const double margin = 1.0e-5;

  for (i = 0; i < LENGTH; ++i) {
    a[i] = 0.000017 * i;
    b[i] = 0.000034 * i;
    c[i] = 0.000031 * i;
  }

  FMA(r, a, b, c);

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

void FMA(double * restrict r, double * restrict a, double * restrict b, double * restrict c)
{
  int i;

#pragma omp parallel for
  for (i = 0; i < LENGTH; ++i) {
    r[i] = a[i] * b[i] + c[i];
  }
}
