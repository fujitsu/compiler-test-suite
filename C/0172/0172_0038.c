#include <stdio.h>
#include <stdarg.h>
#include <complex.h>

void limitation_04(float _Complex arg1, double _Complex arg2, long double _Complex arg3, ...) {
  float _Complex val1;
  double _Complex val2;
  long double _Complex val3;
  va_list ap;
  va_start(ap, arg3);
  val1 = va_arg(ap, float _Complex);
  val2 = va_arg(ap, double _Complex);
  val3 = va_arg(ap, long double _Complex);
  va_end(ap);
  printf("%f, %f\n", crealf(arg1), cimagf(arg1));
  printf("%lf, %lf\n", creal(arg2), cimag(arg2));
  printf("%lf, %lf\n", (double)creall(arg3), (double)cimagl(arg3));
  printf("%f, %f\n", crealf(val1), cimagf(val1));
  printf("%lf, %lf\n", creal(val2), cimag(val2));
  printf("%lf, %lf\n", (double)creall(val3), (double)cimagl(val3));
}

int main() {
  float _Complex fc = 1.0F + 2.0iF;
  double _Complex dc = 3.0 + 4.0i;
  long double _Complex ldc = 5.0L + 6.0iL;
  limitation_04(fc, dc, ldc, fc, dc, ldc);
  return 0;
}
