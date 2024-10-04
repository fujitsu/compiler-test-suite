
#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <complex.h>

union un {
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

void foo(union un u1, ...)
{
#if !defined (__x86_64__)
  va_list vl;
  union un u2;

  va_start(vl, u1);
  u2 = va_arg(vl, union un);
  if (u1.i1 == u2.i1) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (u1.i2 == u2.i2) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (u1.i4 == u2.i4) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (u1.il == u2.il) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (u1.i8 == u2.i8) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (u1.u1 == u2.u1) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (u1.u2 == u2.u2) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (u1.u4 == u2.u4) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (u1.ul == u2.ul) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (u1.u8 == u2.u8) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if ((int)u1.r4 == (int)u2.r4) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if ((int)u1.r8 == (int)u2.r8) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if ((int)u1.r16 == (int)u2.r16) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if ((int)u1.c8 == (int)u2.c8) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if ((int)u1.c16 == (int)u2.c16) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if ((int)u1.c32 == (int)u2.c32) {
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
  union un u1, u2;
  u1.c32 = u2.c32 = 16.0l+16.0li;
  foo(u1, u2);
#endif
  return 0;
}
