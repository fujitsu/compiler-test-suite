#include <stdio.h>
#include <stdarg.h>
#include <complex.h>
void limitation_01(double val1, double val2, double val3, double val4, double val5, double val6, double val7, ...) {
  double _Complex dc;
  va_list ap;
  va_start(ap, val7);
  dc = va_arg(ap, double _Complex);
  va_end(ap);
  printf ("%lf, %lf\n", creal(dc), cimag(dc));
}

int main() {
  limitation_01(1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0+9.0i);
  return 0;
}
