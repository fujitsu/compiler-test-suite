
#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

#include <stdio.h>
#include <stdarg.h>

typedef struct T {
  long a[3];
} test_t;

test_t gval1, gval2, gval3;

void f1(int a1, ...) {
  va_list ap;
  va_start(ap, a1);
  gval1 = va_arg(ap, test_t);
  va_end(ap);
}
void f2(float a1, ...) {
  va_list ap;
  va_start(ap, a1);
  gval2 = va_arg(ap, test_t);
  va_end(ap);
}

void f3(test_t a1, ...) {
  va_list ap;
  va_start(ap, a1);
  gval3 = va_arg(ap, test_t);
  va_end(ap);
}

int main() {
  test_t tval = {{1,2,3}};
  f1(1,tval);
  f2(2.0F,tval);
  f3(tval,tval);
  if (gval1.a[0] == 1 && gval1.a[1] == 2 && gval1.a[2] == 3 &&
      gval2.a[0] == 1 && gval2.a[1] == 2 && gval2.a[2] == 3 &&
      gval3.a[0] == 1 && gval3.a[1] == 2 && gval3.a[2] == 3) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
