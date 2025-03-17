
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
  int i;
  va_list ap;
  va_start(ap, a1);
  for(i=0;i<8;++i) {
    gval[i] = va_arg(ap, int);
  }
  va_end(ap);
}
void f2(int a1, int a2, ...) {
  int i;
  va_list ap;
  va_start(ap, a2);
  for(i=0;i<8;++i) {
    gval[i] = va_arg(ap, int);
  }
  va_end(ap);
}
void f3(int a1, int a2, int a3, ...) {
  int i;
  va_list ap;
  va_start(ap, a3);
  for(i=0;i<8;++i) {
    gval[i] = va_arg(ap, int);
  }
  va_end(ap);
}
void f4(int a1, int a2, int a3, int a4, ...) {
  int i;
  va_list ap;
  va_start(ap, a4);
  for(i=0;i<8;++i) {
    gval[i] = va_arg(ap, int);
  }
  va_end(ap);
}
void f5(int a1, int a2, int a3, int a4, int a5, ...) {
  int i;
  va_list ap;
  va_start(ap, a5);
  for(i=0;i<8;++i) {
    gval[i] = va_arg(ap, int);
  }
  va_end(ap);
}
void f6(int a1, int a2, int a3, int a4, int a5, int a6, ...) {
  int i;
  va_list ap;
  va_start(ap, a6);
  for(i=0;i<8;++i) {
    gval[i] = va_arg(ap, int);
  }
  va_end(ap);
}
void f7(int a1, int a2, int a3, int a4, int a5, int a6, int a7, ...) {
  int i;
  va_list ap;
  va_start(ap, a7);
  for(i=0;i<8;++i) {
    gval[i] = va_arg(ap, int);
  }
  va_end(ap);
}
void f8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, ...) {
  int i;
  va_list ap;
  va_start(ap, a8);
  for(i=0;i<8;++i) {
    gval[i] = va_arg(ap, int);
  }
  va_end(ap);
}

int main() {
  puts("OK");
  return 0;
}
