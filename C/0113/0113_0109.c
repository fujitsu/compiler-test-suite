#include <stdio.h>


#include <limits.h>
#include <float.h>

static void i1toi4();
static void i2toi4();
static void u1toi4();
static void u2toi4();
static void u1tou4();
static void u2tou4();
static void i1toi8();
static void i2toi8();
static void i4toi8();
static void u1toi8();
static void u2toi8();
static void u4toi8();
static void u1tou8();
static void u2tou8();
static void u4tou8();
static void r4tor8();
static void r4tor16();
static void r8tor16();
int main()
{
  i1toi4((signed char)CHAR_MAX);
  i2toi4((signed short)SHRT_MAX);
  u1toi4((unsigned char)UCHAR_MAX);
  u2toi4((unsigned short)USHRT_MAX);
  u1tou4((unsigned char)UCHAR_MAX);
  u2tou4((unsigned short)USHRT_MAX);
  i1toi8((signed char)CHAR_MAX);
  i2toi8((signed short)SHRT_MAX);
  i4toi8((signed int)INT_MAX);
  u1toi8((unsigned char)UCHAR_MAX);
  u2toi8((unsigned short)USHRT_MAX);
  u4toi8((unsigned int)UINT_MAX);
  u1tou8((unsigned char)UCHAR_MAX);
  u2tou8((unsigned short)USHRT_MAX);
  u4tou8((unsigned int)UINT_MAX);
  r4tor8((float)FLT_MAX);
  r4tor16((float)FLT_MAX);
  r8tor16((double)DBL_MAX);

  printf("\n");
  
}

static void i1toi4(i1)
     signed char i1;
{
  if (i1 == (signed int)CHAR_MAX)
    printf("ok");
  else
    printf("ng");
}

static void i2toi4(i2)
     signed short i2;
{
  if (i2 == (signed int)SHRT_MAX)
    printf("ok");
  else
    printf("ng");
}

static void u1toi4(u1)
     unsigned char u1;
{
  if (u1 == (signed int)UCHAR_MAX)
    printf("ok");
  else
    printf("ng");
}

static void u2toi4(u2)
     unsigned short u2;
{
  if (u2 == (signed int)USHRT_MAX)
    printf("ok");
  else
    printf("ng");
}

static void u1tou4(u1)
     unsigned char u1;
{
  if (u1 == (unsigned int)UCHAR_MAX)
    printf("ok");
  else
    printf("ng");
}

static void u2tou4(u2)
     unsigned short u2;
{
  if (u2 == (unsigned int)USHRT_MAX)
    printf("ok");
  else
    printf("ng");
}

static void i1toi8(i1)
     signed char i1;
{
  if (i1 == (long long int)CHAR_MAX)
    printf("ok");
  else
    printf("ng");
}

static void i2toi8(i2)
     signed short i2;
{
  if (i2 == (long long int)SHRT_MAX)
    printf("ok");
  else
    printf("ng");
}

static void i4toi8(i4)
     signed int i4;
{
  if (i4 == (long long int)INT_MAX)
    printf("ok");
  else
    printf("ng");
}

static void u1toi8(u1)
     unsigned char u1;
{
  if (u1 == (long long int)UCHAR_MAX)
    printf("ok");
  else
    printf("ng");
}

static void u2toi8(u2)
     unsigned short u2;
{
  if (u2 == (long long int)USHRT_MAX)
    printf("ok");
  else
    printf("ng");
}

static void u4toi8(u4)
     unsigned int u4;
{
  if (u4 == (long long int)UINT_MAX)
    printf("ok");
  else
    printf("ng");
}

static void u1tou8(u1)
     unsigned char u1;
{
  if (u1 == (unsigned long long int)UCHAR_MAX)
    printf("ok");
  else
    printf("ng");
}

static void u2tou8(u2)
     unsigned short u2;
{
  if (u2 == (unsigned long long int)USHRT_MAX)
    printf("ok");
  else
    printf("ng");
}

static void u4tou8(u4)
     unsigned int u4;
{
  if (u4 == (unsigned long long int)UINT_MAX)
    printf("ok");
  else
    printf("ng");
}

static void r4tor8(r4)
     float r4;
{
  if (r4 == (double)FLT_MAX)
    printf("ok");
  else
    printf("ng");
}

static void r4tor16(r4)
     float r4;
{
  if (r4 == (long double)FLT_MAX)
    printf("ok");
  else
    printf("ng");
}

static void r8tor16(r8)
     double r8;
{
  if (r8 == (long double)DBL_MAX)
    printf("ok");
  else
    printf("ng");
}
