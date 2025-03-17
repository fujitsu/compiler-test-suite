
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

int gi1, gi2;
double gd1, gd2;
test_t gt1, gt2;

void f1(int a1, int a2, ...) {
  va_list ap;
  va_start(ap, a1);
  gi1 = va_arg(ap, int);
  va_end(ap);
  va_start(ap, a2);
  gi2 = va_arg(ap, int);
  va_end(ap);
}

void f2(double a1, double a2, ...) {
  va_list ap;
  va_start(ap, a1);
  gd1 = va_arg(ap, double);
  va_end(ap);
  va_start(ap, a2);
  gd2 = va_arg(ap, double);
  va_end(ap);
}

void f3(test_t a1, test_t a2, ...) {
  va_list ap;
  va_start(ap, a1);
  gt1 = va_arg(ap, test_t);
  va_end(ap);
  va_start(ap, a2);
  gt2 = va_arg(ap, test_t);
  va_end(ap);
}

int main() {
  test_t tval1 = {{1,2,3}}, tval2 = {{4,5,6}}, tval3 = {{7,8,9}};
  f1(1,2,3);
  f2(1.0,2.0,3.0);
  f3(tval1,tval2,tval3);

  if (gi2 == 3 && gi2 == 3 &&
      gd1 == 3.0 && gd2 == 3.0 &&
      gt1.a[0] == 7 && gt1.a[1] == 8 && gt1.a[2] == 9 &&
      gt2.a[0] == 7 && gt2.a[1] == 8 && gt2.a[2] == 9) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
