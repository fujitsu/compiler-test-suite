#include <stdio.h>
#include <math.h>

#define LENGTH 	10000

double eval(double * restrict a, double * restrict b);

int main()
{
  int i;
  double a[LENGTH], b[LENGTH], r;
  const double base = 3407396198.8977;
  const double margin = 1.0e-4;

  for (i = 0; i < LENGTH; ++i) {
    a[i] = 0.10111 * i;
    b[i] = 0.10113 * i;
  }

  r = eval(a, b);

  if (fabs(r - base) >= margin) {
    printf("NG\n");
  }
  else {
    printf("OK\n");
  }

  return 0;
}

double eval(double * restrict a, double * restrict b)
{
  double r = 0.0;
  int i;

  for (i = 0; i < LENGTH; ++i) {
    r += a[i] * b[i] - 0.101 * b[i];
  }

  return r;
}
