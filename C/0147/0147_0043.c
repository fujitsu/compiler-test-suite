
#include <stdio.h>

#define test1(x)   \
   x = b;  \
   if(x != 1) printf("NG %d\n",__LINE__);

#define test2(x)   \
   x = b;  \
   if(x != 0) printf("NG %d\n",__LINE__);
int main()
{
  _Bool b = 1;

  signed char  i1 = -1;
  signed short i2 = -1;
  signed int   i4 = -1;
  signed long long i8 = -1;

  test1(i1);
  test1(i2);
  test1(i4);
  test1(i8);

  b = 0;

  i1 = -1;
  i2 = -1;
  i4 = -1;
  i8 = -1;

  test2(i1);
  test2(i2);
  test2(i4);
  test2(i8);

  b = 1;

  unsigned char  u1 = 0xff;
  unsigned short u2 = 0xff;
  unsigned int   u4 = 0xff;
  unsigned long long u8 = 0xff;

  test1(u1);
  test1(u2);
  test1(u4);
  test1(u8);

  b = 0;

  u1 = 0xff;
  u2 = 0xff;
  u4 = 0xff;
  u8 = 0xff;

  test2(u1);
  test2(u2);
  test2(u4);
  test2(u8);

  b = 1;

  float   r4 = -1;
  double  r8 = -1;
  long double r10 = -1;

  test1(r4);
  test1(r8);
  test1(r10);

  b = 0;

  r4 = -1;
  r8 = -1;
  r10 = -1;

  test2(r4);
  test2(r8);
  test2(r10);

  b = 1;

  float   _Complex c4 = -1;
  double  _Complex c8 = -1;
  long double _Complex c10 = -1;

  test1(c4);
  test1(c8);
  test1(c10);

  b = 0;

  c4 = -1;
  c8 = -1;
  c10 = -1;

  test2(c4);
  test2(c8);
  test2(c10);

  puts("PASS");
}
