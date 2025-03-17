
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

long gl1, gl2, gl3;

void f1(int a1, ...) {
  va_list ap;
  va_start(ap, a1);
  gl1 = va_arg(ap, long);
  va_end(ap);
}
void f2(float a1, ...) {
  va_list ap;
  va_start(ap, a1);
  gl2 = va_arg(ap, long);
  va_end(ap);
}

void f3(test_t a1, ...) {
  va_list ap;
  va_start(ap, a1);
  gl3 = va_arg(ap, long);
  va_end(ap);
}

int main() {
  test_t tval = {{0,1,2,3,4,5,6,7}};
  f1(1,1);
  f2(2.0F,2);
  f3(tval,3);
  if (gl1 == 1 && gl2 == 2 && gl3 == 3) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
