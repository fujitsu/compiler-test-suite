
#include <complex.h>
#include <omp.h>
#include <stdio.h>

void sub1() {
  float _Complex fc;
  double _Complex dc;
  long double _Complex lc;
  fc = 1.0 + I * 2.0;
  dc = 3.0 + I * 4.0;
  lc = 5.0 + I * 6.0;
#pragma omp task
  {
    if (creal(fc) != 1.0) printf("sub1 ng creal(fc): %E\n", creal(fc));
    if (cimag(fc) != 2.0) printf("sub1 ng cimag(fc): %E\n", cimag(fc));
    if (creal(dc) != 3.0) printf("sub1 ng creal(dc): %E\n", creal(dc));
    if (cimag(dc) != 4.0) printf("sub1 ng cimag(dc): %E\n", cimag(dc));
    if (creal(lc) != 5.0) printf("sub1 ng creal(lc): %LE\n", creal(lc));
    if (cimag(lc) != 6.0) printf("sub1 ng cimag(lc): %LE\n", cimag(lc));
  }
}

int main() {
#pragma omp parallel
  {
    sub1();
  }
  printf("pass\n");
  return 0;
}
