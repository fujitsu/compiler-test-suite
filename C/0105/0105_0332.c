#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

#define LENGTH 	10000

void private(double * restrict r, double * restrict a);

int main()
{
  int i;
  double a[LENGTH], r[LENGTH], ans = 0.0;
  const double k = 0.00012;
  const double base = 1.26000;
  const double margin = 1.0e-5;

  for (i = 0; i < LENGTH; ++i) {
    if ((i % 2) == 0) {
      a[i] = 1.1 * k;
    }
    else {
      a[i] = 1.0 * k;
    }
  }

  private(r, a);

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

void private(double * restrict r, double * restrict a)
{
  int i;

#pragma omp parallel for
  for (i = 0; i < LENGTH; ++i) {
    r[i] = a[i];
  }
}
