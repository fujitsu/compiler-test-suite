
#include <stdio.h>

void test1(_Bool b)
{
  if( b != 1 ) {
    puts("NG");
  }
}

void test2(_Bool b)
{
  if( b != 0 ) {
    puts("NG");
  }
}
int main()
{
  signed char  i1 = 1;
  signed short i2 = 1;
  signed int   i4 = 1;
  signed long long i8 = 1;

  test1(i1);
  test1(i2);
  test1(i4);
  test1(i8);

  i1 = 0;
  i2 = 0;
  i4 = 0;
  i8 = 0;

  test2(i1);
  test2(i2);
  test2(i4);
  test2(i8);

  unsigned char  u1 = 1;
  unsigned short u2 = 1;
  unsigned int   u4 = 1;
  unsigned long long u8 = 1;

  test1(u1);
  test1(u2);
  test1(u4);
  test1(u8);

  u1 = 0;
  u2 = 0;
  u4 = 0;
  u8 = 0;

  test2(u1);
  test2(u2);
  test2(u4);
  test2(u8);

  float   r4 = 1;
  double  r8 = 1;
  long double r10 = 1;

  test1(r4);
  test1(r8);
  test1(r10);

  r4 = 0;
  r8 = 0;
  r10 = 0;

  test2(r4);
  test2(r8);
  test2(r10);

  float   _Complex c4 = 1;
  double  _Complex c8 = 1;
  long double _Complex c10 = 1;

  test1(c4);
  test1(c8);
  test1(c10);

  c4 = 0;
  c8 = 0;
  c10 = 0;

  test2(c4);
  test2(c8);
  test2(c10);

  puts("PASS");
}
