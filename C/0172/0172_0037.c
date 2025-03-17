#include <stdio.h>
#include <stdarg.h>
#include <complex.h>

void limitation_04(int arg1, ...) {
  float _Complex val1;
  va_list ap;
  va_start(ap, arg1);
  val1 = va_arg(ap, float _Complex);
  va_end(ap);
  printf("%f, %f\n", crealf(val1), cimagf(val1));
}

int main() {
  float _Complex fc = 1.0F + 2.0iF;
  limitation_04(1, fc);
  return 0;
}
