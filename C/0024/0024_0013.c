
#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <complex.h>

#define I1ANS -1
#define I2ANS -2
#define I4ANS -4
#define ILANS -8
#define I8ANS -8
#define U1ANS 1U
#define U2ANS 2U
#define U4ANS 4U
#define ULANS 8U
#define U8ANS 8U
#define R4ANS 4.0f
#define R8ANS 8.0
#define R16ANS 16.0l
#define C8ANS 4.0f-4.0fi
#define C16ANS 8.0+8.0i
#define C32ANS 16.0l-16.0li

void foo(int num, ...)
{
  va_list vl;
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

  va_start(vl, num);
  i1 = *va_arg(vl, signed char *);
  i2 = *va_arg(vl, signed short *);
  i4 = *va_arg(vl, signed int *);
  il = *va_arg(vl, signed long *);
  i8 = *va_arg(vl, signed long long *);
  u1 = *va_arg(vl, unsigned char *);
  u2 = *va_arg(vl, unsigned short *);
  u4 = *va_arg(vl, unsigned int *);
  ul = *va_arg(vl, unsigned long *);
  u8 = *va_arg(vl, unsigned long long *);
  r4 = *va_arg(vl, float *);
  r8 = *va_arg(vl, double *);
  r16 = *va_arg(vl, long double *);
  c8 = *va_arg(vl, float _Complex *);
  c16 = *va_arg(vl, double _Complex *);
  c32 = *va_arg(vl, long double _Complex *);
  if (i1 == I1ANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (i2 == I2ANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (i4 == I4ANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (il == ILANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (i8 == I8ANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (u1 == U1ANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (u2 == U2ANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (u4 == U4ANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (ul == ULANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (u8 == U8ANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (r4 == R4ANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (r8 == R8ANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (r16 == R16ANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (c8 == C8ANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (c16 == C16ANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  if (c32 == C32ANS) {
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
  va_end(vl);
}

int main(void) {
  signed char i1 = I1ANS;
  signed short i2 = I2ANS;
  signed int i4 = I4ANS;
  signed long il = ILANS;
  signed long long i8 = I8ANS;
  unsigned char u1 = U1ANS;
  unsigned short u2 = U2ANS;
  unsigned int u4 = U4ANS;
  unsigned long ul = ULANS;
  unsigned long long u8 = U8ANS;
  float r4 = R4ANS;
  double r8 = R8ANS;
  long double r16 = R16ANS;
  float _Complex c8 = C8ANS;
  double _Complex c16 = C16ANS;
  long double _Complex c32 = C32ANS;
  foo(0, &i1, &i2, &i4, &il, &i8, &u1, &u2, &u4, &ul, &u8, &r4, &r8, &r16, &c8, &c16, &c32);
  return 0;
}
