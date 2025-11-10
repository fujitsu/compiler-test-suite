
#include <stdio.h>
#define EQ(op2,op3) EQ_##op2##op3(op2,op3)

int EQ_i1d1i1d2(a,b)
     char a,b;
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
int EQ_i2d1i2d2(a,b)
     short a,b;
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
int EQ_i4d1i4d2(a,b)
     int a,b;
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
int EQ_i4d3i4d4(a,b)
     long a,b;
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
int EQ_i8d1i8d2(a,b)
     long long a,b;
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
int EQ_r4d1r4d2(a,b)
     float a,b;
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
int EQ_r8d1r8d2(a,b)
     double a,b;
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
int EQ_r16d1r16d2(a,b)
     long double a,b;
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
int EQ_u1d1u1d2(a,b)
     unsigned char a,b;
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
int EQ_u2d1u2d2(a,b)
     unsigned short a,b;
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
int EQ_u4d1u4d2(a,b)
     unsigned int a,b;
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
int EQ_u4d3u4d4(a,b)
     unsigned long a,b;
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
int EQ_u8d1u8d2(a,b)
     unsigned long long a,b;
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

 void lto_sub_37()
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

  printf(" test start\n");

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

  printf(" test OK\n");
  printf(" test end\n");
  return;
  
 test_end:
  printf(" test NG\n");
  printf(" test end\n");
}
