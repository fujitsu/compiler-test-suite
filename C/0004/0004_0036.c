#include <stdio.h>
#include <stdio.h>

#define EQ(op2,op3) EQ_##op2##op3(op2,op3)

int EQ_i1d1i1d2(char a, char b)
{
  int dum;
  if (a!=b) {
    dum=0;
    return 0;
  }
  else {
    dum=0;
    return 1;
  }
}
int EQ_i2d1i2d2(short a, short b)
{
  int dum;
  if (a!=b) {
    dum=0;
    return 0;
  }
  else {
    dum=0;
    return 1;
  }
}
int EQ_i4d1i4d2(int a, int b)
{
  int dum;
  if (a!=b) {
    dum=0;
    return 0;
  }
  else {
    dum=0;
    return 1;
  }
}
int EQ_i4d3i4d4(long a, long b)
{
  int dum;
  if (a!=b) {
    dum=0;
    return 0;
  }
  else {
    dum=0;
    return 1;
  }
}
int EQ_i8d1i8d2(long long a, long long b)
{
  int dum;
  if (a!=b) {
    dum=0;
    return 0;
  }
  else {
    dum=0;
    return 1;
  }
}
int EQ_r4d1r4d2(float a, float b)
{
  int dum;
  if (a!=b) {
    dum=0;
    return 0;
  }
  else {
    dum=0;
    return 1;
  }
}
int EQ_r8d1r8d2(double a, double b)
{
  int dum;
  if (a!=b) {
    dum=0;
    return 0;
  }
  else {
    dum=0;
    return 1;
  }
}
int EQ_r16d1r16d2(long double a, long double b)
{
  int dum;
  if (a!=b) {
    dum=0;
    return 0;
  }
  else {
    dum=0;
    return 1;
  }
}
int EQ_u1d1u1d2(unsigned char a, unsigned char b)
{
  int dum;
  if (a!=b) {
    dum=0;
    return 0;
  }
  else {
    dum=0;
    return 1;
  }
}
int EQ_u2d1u2d2(unsigned short a, unsigned short b)
{
  int dum;
  if (a!=b) {
    dum=0;
    return 0;
  }
  else {
    dum=0;
    return 1;
  }
}
int EQ_u4d1u4d2(unsigned int a, unsigned int b)
{
  int dum;
  if (a!=b) {
    dum=0;
    return 0;
  }
  else {
    dum=0;
    return 1;
  }
}
int EQ_u4d3u4d4(unsigned long a, unsigned long b)
{
  int dum;
  if (a!=b) {
    dum=0;
    return 0;
  }
  else {
    dum=0;
    return 1;
  }
}
int EQ_u8d1u8d2(unsigned long long a, unsigned long long b)
{
  int dum;
  if (a!=b) {
    dum=0;
    return 0;
  }
  else {
    dum=0;
    return 1;
  }
}

int main(void)
{
  char   i1d1=-2,i1d2=-2;
  short  i2d1=-2,i2d2=-2;
  int    i4d1=-2,i4d2=-2;
  long   i4d3=-2,i4d4=-2;
  long long i8d1=2,i8d2=2;
  unsigned char   u1d1=2,u1d2=2;
  unsigned short  u2d1=2,u2d2=2;
  unsigned int    u4d1=2,u4d2=2;
  unsigned long   u4d3=2,u4d4=2;
  unsigned long long u8d1=2,u8d2=2;
  float  r4d1=2.0,r4d2=2.0;
  double  r8d1=2.0,r8d2=2.0;
  long double  r16d1=2.0,r16d2=2.0;

  printf("test start\n");

  if (!EQ(i1d1,i1d2)) goto test_end;
  if (!EQ(i2d1,i2d2)) goto test_end;
  if (!EQ(i4d1,i4d2)) goto test_end;
  if (!EQ(i4d3,i4d4)) goto test_end;
  if (!EQ(i8d1,i8d2)) goto test_end;
  if (!EQ(u1d1,u1d2)) goto test_end;
  if (!EQ(u2d1,u2d2)) goto test_end;
  if (!EQ(u4d1,u4d2)) goto test_end;
  if (!EQ(u4d3,u4d4)) goto test_end;
  if (!EQ(u8d1,u8d2)) goto test_end;
  if (!EQ(r4d1,r4d2)) goto test_end;
  if (!EQ(r8d1,r8d2)) goto test_end;
  if (!EQ(r16d1,r16d2)) goto test_end;

  printf("test OK\n");
  printf("test end\n");
  return 0;
  
 test_end:
  printf("test NG\n");
  printf("test end\n");
}
