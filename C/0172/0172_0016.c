
#include <stdio.h>
#include <stdarg.h>

#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

typedef struct T {
  int a[8];
} test_t;

int gi;
float gf;
test_t gt;

void f1(int a1, ...) {
  va_list ap;
  va_start(ap, a1);
  va_end(ap);
  gi = a1;
}
void f2(float a1, ...) {
  va_list ap;
  va_start(ap, a1);
  va_end(ap);
  gf = a1;
}

#ifndef NO_STRUCT
void f3(test_t a1, ...) {
  va_list ap;
  va_start(ap, a1);
  va_end(ap);
  gt = a1;
}
#else
void f3(test_t a1) {
  gt = a1;
}
#endif

int main() {
  test_t tval = {{0,1,2,3,4,5,6,7}};
  f1(1);
  f2(2.0F);
  f3(tval);
  if (gi == 1 && gf == 2.0F && gt.a[7] == 7) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
