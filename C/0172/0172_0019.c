
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

int gval[8];

void f1(int a1, ...) {
  va_list ap;
  va_start(ap, a1);
  gval[0] = va_arg(ap, int);
  va_end(ap);
}
void f2(int a1, int a2, ...) {
  va_list ap;
  va_start(ap, a2);
  gval[1] = va_arg(ap, int);
  va_end(ap);
}
void f3(int a1, int a2, int a3, ...) {
  va_list ap;
  va_start(ap, a3);
  gval[2] = va_arg(ap, int);
  va_end(ap);
}
void f4(int a1, int a2, int a3, int a4, ...) {
  va_list ap;
  va_start(ap, a4);
  gval[3] = va_arg(ap, int);
  va_end(ap);
}
void f5(int a1, int a2, int a3, int a4, int a5, ...) {
  va_list ap;
  va_start(ap, a5);
  gval[4] = va_arg(ap, int);
  va_end(ap);
}
void f6(int a1, int a2, int a3, int a4, int a5, int a6, ...) {
  va_list ap;
  va_start(ap, a6);
  gval[5] = va_arg(ap, int);
  va_end(ap);
}
void f7(int a1, int a2, int a3, int a4, int a5, int a6, int a7, ...) {
  va_list ap;
  va_start(ap, a7);
  gval[6] = va_arg(ap, int);
  va_end(ap);
}
void f8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, ...) {
  va_list ap;
  va_start(ap, a8);
  gval[7] = va_arg(ap, int);
  va_end(ap);
}

int main() {
  f1(0,1);
  f2(0,1,2);
  f3(0,1,2,3);
  f4(0,1,2,3,4);
  f5(0,1,2,3,4,5);
  f6(0,1,2,3,4,5,6);
  f7(0,1,2,3,4,5,6,7);
  f8(0,1,2,3,4,5,6,7,8);
  if (gval[0] == 1 && gval[1] == 2 && gval[2] == 3 && gval[3] == 4 &&
      gval[4] == 5 && gval[5] == 6 && gval[6] == 7 && gval[7] == 8) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
