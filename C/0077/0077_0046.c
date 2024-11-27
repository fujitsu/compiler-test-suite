
#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

#include <stdio.h>
#include <stdarg.h>

#ifndef NOUSE_ATTR
#define PACKED_ATTR ATTR(packed)
#else
#define PACKED_ATTR
#endif

struct T1 {
  int a1;
  double a2;
  int a3;
} PACKED_ATTR;

struct T1 gval1;
void ATTR(noinline) f1 (struct T1 arg) {
  gval1 = arg;
}

struct T2 {
  int a1;
  double a2;
} PACKED_ATTR;

struct T2 gval2;
void ATTR(noinline) f2 (struct T2 arg) {
  gval2 = arg;
}

struct T3 {
  int a1;
} PACKED_ATTR;

struct T3 gval3;
void ATTR(noinline) f3 (struct T3 arg) {
  gval3 = arg;
}

struct T4 {
  double a1;
} PACKED_ATTR;

struct T4 gval4;
void ATTR(noinline) f4 (struct T4 arg) {
  gval4 = arg;
}

struct T5 {
  double a1;
  int a2;
} PACKED_ATTR;

struct T5 gval5;
void ATTR(noinline) f5 (struct T5 arg) {
  gval5 = arg;
}

struct T6 {
  char a1;
  int a2;
} PACKED_ATTR;

struct T6 gval6;
void ATTR(noinline) f6 (struct T6 arg) {
  gval6 = arg;
}

int main() {
  struct T1 val1 = {1, 2.0, 3};
  struct T2 val2 = {4, 5.0};
  struct T3 val3 = {6};
  struct T4 val4 = {7.0};
  struct T5 val5 = {8.0, 9};
  struct T6 val6 = {10, 11};
  f1(val1);
#ifdef CHECK_SIZE
  printf("T1 : %d\n", sizeof(struct T1));
  printf("T2 : %d\n", sizeof(struct T2));
  printf("T3 : %d\n", sizeof(struct T3));
  printf("T4 : %d\n", sizeof(struct T4));
  printf("T5 : %d\n", sizeof(struct T5));
  printf("T6 : %d\n", sizeof(struct T6));
#endif
  if (gval1.a1 == 1 && gval1.a2 == 2.0 && gval1.a3 == 3) {
    puts("OK");
  } else {
    puts("NG");
  }
  f2(val2);
  if (gval2.a1 == 4 && gval2.a2 == 5.0) {
    puts("OK");
  } else {
    puts("NG");
  }
  f3(val3);
  if (gval3.a1 == 6) {
    puts("OK");
  } else {
    puts("NG");
  }
  f4(val4);
  if (gval4.a1 == 7.0) {
    puts("OK");
  } else {
    puts("NG");
  }
  f5(val5);
  if (gval5.a1 == 8.0 && gval5.a2 == 9) {
    puts("OK");
  } else {
    puts("NG");
  }
  f6(val6);
  if (gval6.a1 == 10 && gval6.a2 == 11) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
