
#include <stdio.h>
#include <complex.h>
int main() {
  double complex a, b;
  double _Complex c;
  a = 2.0 + 3.0*I;
  b = 4.0 + 5.0*I;
  c = a + b;
  if (creal(c) == 6.0 && cimag(c) == 8.0 ) {
    printf("OK\n");
  }
  else {
    printf("NG real=%lf, imag=%lf\n", creal(c), cimag(c));
  }
  return 0;
}
