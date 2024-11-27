#include <stdio.h>


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
  i1toi4((signed char)2);
  i2toi4((signed short)2);
  u1toi4((unsigned char)2);
  u2toi4((unsigned short)2);
  u1tou4((unsigned char)2);
  u2tou4((unsigned short)2);
  i1toi8((signed char)2);
  i2toi8((signed short)2);
  i4toi8((signed int)2);
  u1toi8((unsigned char)2);
  u2toi8((unsigned short)2);
  u4toi8((unsigned int)2);
  u1tou8((unsigned char)2);
  u2tou8((unsigned short)2);
  u4tou8((unsigned int)2);
  r4tor8((float)2.0);
  r4tor16((float)2.0);
  r8tor16((double)2.0);

  printf("\n");
  
}

static void i1toi4(i1)
     signed char i1;
{
  if (i1 == (signed int)2)
    printf("ok");
  else
    printf("ng");
}

static void i2toi4(i2)
     signed short i2;
{
  if (i2 == (signed int)2)
    printf("ok");
  else
    printf("ng");
}

static void u1toi4(u1)
     unsigned char u1;
{
  if (u1 == (signed int)2)
    printf("ok");
  else
    printf("ng");
}

static void u2toi4(u2)
     unsigned short u2;
{
  if (u2 == (signed int)2)
    printf("ok");
  else
    printf("ng");
}

static void u1tou4(u1)
     unsigned char u1;
{
  if (u1 == (unsigned int)2)
    printf("ok");
  else
    printf("ng");
}

static void u2tou4(u2)
     unsigned short u2;
{
  if (u2 == (unsigned int)2)
    printf("ok");
  else
    printf("ng");
}

static void i1toi8(i1)
     signed char i1;
{
  if (i1 == (long long int)2)
    printf("ok");
  else
    printf("ng");
}

static void i2toi8(i2)
     signed short i2;
{
  if (i2 == (long long int)2)
    printf("ok");
  else
    printf("ng");
}

static void i4toi8(i4)
     signed int i4;
{
  if (i4 == (long long int)2)
    printf("ok");
  else
    printf("ng");
}

static void u1toi8(u1)
     unsigned char u1;
{
  if (u1 == (long long int)2)
    printf("ok");
  else
    printf("ng");
}

static void u2toi8(u2)
     unsigned short u2;
{
  if (u2 == (long long int)2)
    printf("ok");
  else
    printf("ng");
}

static void u4toi8(u4)
     unsigned int u4;
{
  if (u4 == (long long int)2)
    printf("ok");
  else
    printf("ng");
}

static void u1tou8(u1)
     unsigned char u1;
{
  if (u1 == (unsigned long long int)2)
    printf("ok");
  else
    printf("ng");
}

static void u2tou8(u2)
     unsigned short u2;
{
  if (u2 == (unsigned long long int)2)
    printf("ok");
  else
    printf("ng");
}

static void u4tou8(u4)
     unsigned int u4;
{
  if (u4 == (unsigned long long int)2)
    printf("ok");
  else
    printf("ng");
}

static void r4tor8(r4)
     float r4;
{
  if (r4 == (double)2.0)
    printf("ok");
  else
    printf("ng");
}

static void r4tor16(r4)
     float r4;
{
  if (r4 == (long double)2.0)
    printf("ok");
  else
    printf("ng");
}

static void r8tor16(r8)
     double r8;
{
  if (r8 == (long double)2.0)
    printf("ok");
  else
    printf("ng");
}
