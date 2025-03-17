
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

int gval1[8],gval2[8];

void f1(int a1, ...) {
  va_list ap;
  va_start(ap, a1);
  gval1[0] = va_arg(ap, int);
  gval2[0] = va_arg(ap, int);
  va_end(ap);
}
void f2(int a1, int a2, ...) {
  va_list ap;
  va_start(ap, a2);
  gval1[1] = va_arg(ap, int);
  gval2[1] = va_arg(ap, int);
  va_end(ap);
}
void f3(int a1, int a2, int a3, ...) {
  va_list ap;
  va_start(ap, a3);
  gval1[2] = va_arg(ap, int);
  gval2[2] = va_arg(ap, int);
  va_end(ap);
}
void f4(int a1, int a2, int a3, int a4, ...) {
  va_list ap;
  va_start(ap, a4);
  gval1[3] = va_arg(ap, int);
  gval2[3] = va_arg(ap, int);
  va_end(ap);
}
void f5(int a1, int a2, int a3, int a4, int a5, ...) {
  va_list ap;
  va_start(ap, a5);
  gval1[4] = va_arg(ap, int);
  gval2[4] = va_arg(ap, int);
  va_end(ap);
}
void f6(int a1, int a2, int a3, int a4, int a5, int a6, ...) {
  va_list ap;
  va_start(ap, a6);
  gval1[5] = va_arg(ap, int);
  gval2[5] = va_arg(ap, int);
  va_end(ap);
}
void f7(int a1, int a2, int a3, int a4, int a5, int a6, int a7, ...) {
  va_list ap;
  va_start(ap, a7);
  gval1[6] = va_arg(ap, int);
  gval2[6] = va_arg(ap, int);
  va_end(ap);
}
void f8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, ...) {
  va_list ap;
  va_start(ap, a8);
  gval1[7] = va_arg(ap, int);
  gval2[7] = va_arg(ap, int);
  va_end(ap);
}

int main() {
  f1(0,1,2);
  f2(0,1,2,3);
  f3(0,1,2,3,4);
  f4(0,1,2,3,4,5);
  f5(0,1,2,3,4,5,6);
  f6(0,1,2,3,4,5,6,7);
  f7(0,1,2,3,4,5,6,7,8);
  f8(0,1,2,3,4,5,6,7,8,9);
  if (gval1[0] == 1 && gval1[1] == 2 && gval1[2] == 3 && gval1[3] == 4 &&
      gval1[4] == 5 && gval1[5] == 6 && gval1[6] == 7 && gval1[7] == 8 &&
      gval2[0] == 2 && gval2[1] == 3 && gval2[2] == 4 && gval2[3] == 5 && 
      gval2[4] == 6 && gval2[5] == 7 && gval2[6] == 8 && gval2[7] == 9) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
