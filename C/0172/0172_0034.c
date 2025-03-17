#include <stdio.h>
#include <stdarg.h>
#include <complex.h>

struct T {
  float f1, f2;
};
void limitation_02(struct T arg1, int arg2, ...) {
  int val;
  va_list ap;
  va_start(ap, arg2);
  val = va_arg(ap, int);
  va_end(ap);
  printf("%d\n", val);
}

int main() {
  struct T val = {1.0F, 2.0F};
  limitation_02(val, 1, 2);
  return 0;
}
