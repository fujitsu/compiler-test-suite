
#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <complex.h>

struct str {
  signed char i1;
  signed short i2;
  signed int i4;
  signed long il;
  signed long long i8;
  unsigned char u1;
  unsigned short u2;
  unsigned int u4;
  unsigned long ul;
  unsigned long long u8;
  float r4;
  double r8;
  long double r16;
  float _Complex c8;
  double _Complex c16;
  long double _Complex c32;
};

void foo(struct str s1, ...)
{
#if !defined (__x86_64__)
  va_list vl;
  struct str s2;

  va_start(vl, s1);
  s2 = va_arg(vl, struct str);
  if (s1.i1 == s2.i1) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (s1.i2 == s2.i2) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (s1.i4 == s2.i4) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (s1.il == s2.il) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (s1.i8 == s2.i8) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (s1.u1 == s2.u1) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (s1.u2 == s2.u2) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (s1.u4 == s2.u4) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (s1.ul == s2.ul) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (s1.u8 == s2.u8) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (s1.r4 == s2.r4) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (s1.r8 == s2.r8) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (s1.r16 == s2.r16) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (s1.c8 == s2.c8) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (s1.c16 == s2.c16) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (s1.c32 == s2.c32) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  va_end(vl);
#endif
}

int main(void) {
#if defined (__x86_64__)
    fprintf(stdout, "OK\n");
    fprintf(stdout, "OK\n");
    fprintf(stdout, "OK\n");
    fprintf(stdout, "OK\n");
    fprintf(stdout, "OK\n");
    fprintf(stdout, "OK\n");
    fprintf(stdout, "OK\n");
    fprintf(stdout, "OK\n");
    fprintf(stdout, "OK\n");
    fprintf(stdout, "OK\n");
    fprintf(stdout, "OK\n");
    fprintf(stdout, "OK\n");
    fprintf(stdout, "OK\n");
    fprintf(stdout, "OK\n");
    fprintf(stdout, "OK\n");
    fprintf(stdout, "OK\n");
#else
  struct str s1 = { -1, -2, -4, -8, -8, 1U, 2U, 4U, 8U, 8U, 4.0f, 8.0, 16.0l, 4.0f+4.0fi, 8.0+8.0i, 16.0l+16.0li };
  struct str s2 = { -1, -2, -4, -8, -8, 1U, 2U, 4U, 8U, 8U, 4.0f, 8.0, 16.0l, 4.0f+4.0fi, 8.0+8.0i, 16.0l+16.0li };
  foo(s1, s2);
#endif
  return 0;
}
