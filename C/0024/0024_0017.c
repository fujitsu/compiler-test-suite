
#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

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

void foo(int num, ...)
{
  va_list vl;
  va_start(vl, num);
  vfprintf(stdout,
	   "%d,%d,%d,%ld,%lld,\n %x,%x,%x,%lx,%llx,\n %lf,%lf,%Lf\n",
	   vl);
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

  foo(0, i1, i2, i4, il, i8, u1, u2, u4, ul, u8, r4, r8, r16);
  return 0;
}
