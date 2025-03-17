#include <stdio.h>
#include <stdarg.h>
#include <complex.h>

struct T {
  float f1, f2;
};
void limitation_03(int arg1, int arg2, ...) {
  struct T val;
  va_list ap;
  va_start(ap, arg2);
  val = va_arg(ap, struct T);
  va_end(ap);
  printf("%f\n", val.f1);
}

int main() {
  struct T val = {1.0F, 2.0F};
  limitation_03(1, 2, val);
  return 0;
}
