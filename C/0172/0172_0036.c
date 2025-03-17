#include <stdio.h>
#include <stdarg.h>
#include <complex.h>

void limitation_04(double _Complex arg1, ...) {
  double _Complex val1;
  va_list ap;
  va_start(ap, arg1);
  val1 = va_arg(ap, double _Complex);
  va_end(ap);
  printf("%lf, %lf\n", creal(val1), cimag(val1));
}

int main() {
  double _Complex fc = 1.0 + 2.0i;
  limitation_04(fc, fc);
  return 0;
}
