#include <stdarg.h>
#include <stdio.h>

void foo(int *p1, int *p2, ...) {
  int *p3, *p4, *p5;
  va_list ap;

  va_start(ap, p2);
  p3 = va_arg(ap, int *);
  p4 = va_arg(ap, int *);
  p5 = va_arg(ap, int *);

  *p1 = 1;
  *p2 = 2;
  *p3 = 3;
  *p4 = 4;
  *p5 = 5;
  if (*p1 == 1 && *p2 == 2 && *p3 == 3 && *p4 == 4 && *p5 == 5) {
    printf("tesst: ok\n");
  } else if (*p1 == 3 && *p2 == 3 && *p3 == 3 && *p4 == 5 && *p5 == 5) {
    printf("test: couldn't optimize by using restp\n");
  } else {
    printf("test: ng\n");
  }
}

int main(void) {
  int a1, a2;
  int *p1, *p2, *p3, *p4, *p5;
  p1 = &a1;
  p2 = &a1;
  p3 = &a1;
  p4 = &a2;
  p5 = &a2;
  a1 = 2;
  a2 = 3;
  foo(p1, p2, p3, p4, p5);
  return 0;
}
