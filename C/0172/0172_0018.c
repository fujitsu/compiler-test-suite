
#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

#include <stdio.h>
#include <stdarg.h>

typedef struct T {
  int a[8];
} test_t;

int gi1, gi2, gi3;
void f1(int a1, ...) {
  va_list ap;
  va_start(ap, a1);
  gi1 = va_arg(ap, int);
  va_end(ap);
}
void f2(float a1, ...) {
  va_list ap;
  va_start(ap, a1);
  gi2 = va_arg(ap, int);
  va_end(ap);
}

void f3(test_t a1, ...) {
  va_list ap;
  va_start(ap, a1);
  gi3 = va_arg(ap, int);
  va_end(ap);
}

int main() {
  test_t tval = {{0,1,2,3,4,5,6,7}};
  f1(1,1);
  f2(2.0F,2);
  f3(tval,3);
  if (gi1 == 1 && gi2 == 2 && gi3 == 3) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
