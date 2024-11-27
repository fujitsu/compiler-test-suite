#include "stdio.h"
#include <complex.h>

static int i1(void)
{
  int i;
  char y[2],z[2];
  y[1] = 4;
  z[1] = 4;
  for(i=0;i<4;i++) {
    y[1] = y[1] + z[1];
    z[1] = y[1];
  }
  if (y[1] != 64 || z[1] != 64) {
    printf(" i1 %d %d \n",y[1],z[1]);
    return 1;
  }

  return 0;
}

static int i2(void)
{
  int i;
  short int y[2],z[2];
  y[1] = 4;
  z[1] = 4;
  for(i=0;i<10;i++) {
    y[1] = y[1] + z[1];
    z[1] = y[1];
  }
  if (y[1] != 4096 || z[1] != 4096) {
    printf(" i2 %d %d \n",y[1],z[1]);
    return 1;
  }

  return 0;
}

static int i4(void)
{
  int i;
  int y[2],z[2];
  y[1] = 4;
  z[1] = 4;
  for(i=0;i<10;i++) {
    y[1] = y[1] + z[1];
    z[1] = y[1];
  }
  if (y[1] != 4096 || z[1] != 4096) {
    printf(" i4 %d %d \n",y[1],z[1]);
    return 1;
  }

  return 0;
}

static int i8(void)
{
  int i;
  long long int y[2],z[2];
  y[1] = 4;
  z[1] = 4;
  for(i=0;i<10;i++) {
    y[1] = y[1] + z[1];
    z[1] = y[1];
  }
  if (y[1] != 4096 || z[1] != 4096) {
    printf(" i8 %lld %lld \n",y[1],z[1]);
    return 1;
  }

  return 0;
}


static int u1(void)
{
  int i;
  unsigned char y[2],z[2];
  y[1] = 4;
  z[1] = 4;
  for(i=0;i<4;i++) {
    y[1] = y[1] + z[1];
    z[1] = y[1];
  }
  if (y[1] != 64 || z[1] != 64) {
    printf(" u1 %d %d \n",y[1],z[1]);
    return 1;
  }

  return 0;
}

static int u2(void)
{
  int i;
  unsigned short int y[2],z[2];
  y[1] = 4;
  z[1] = 4;
  for(i=0;i<10;i++) {
    y[1] = y[1] + z[1];
    z[1] = y[1];
  }
  if (y[1] != 4096 || z[1] != 4096) {
    printf(" u2 %d %d \n",y[1],z[1]);
    return 1;
  }

  return 0;
}

static int u4(void)
{
  int i;
  unsigned int y[2],z[2];
  y[1] = 4;
  z[1] = 4;
  for(i=0;i<10;i++) {
    y[1] = y[1] + z[1];
    z[1] = y[1];
  }
  if (y[1] != 4096 || z[1] != 4096) {
    printf(" u4 %d %d \n",y[1],z[1]);
    return 1;
  }

  return 0;
}

static int u8(void)
{
  int i;
  unsigned long long int y[2],z[2];
  y[1] = 4;
  z[1] = 4;
  for(i=0;i<10;i++) {
    y[1] = y[1] + z[1];
    z[1] = y[1];
  }
  if (y[1] != 4096 || z[1] != 4096) {
    printf(" u8 %llu %llu \n",y[1],z[1]);
    return 1;
  }

  return 0;
}


static int r4(void)
{
  int i;
  float y[2],z[2];
  y[1] = 4;
  z[1] = 4;
  for(i=0;i<10;i++) {
    y[1] = y[1] + z[1];
    z[1] = y[1];
  }
  if (y[1] != 4096 || z[1] != 4096) {
    printf(" r4 %f %f \n",y[1],z[1]);
    return 1;
  }

  return 0;
}


static int r8(void)
{
  int i;
  double y[2],z[2];
  y[1] = 4;
  z[1] = 4;
  for(i=0;i<10;i++) {
    y[1] = y[1] + z[1];
    z[1] = y[1];
  }
  if (y[1] != 4096 || z[1] != 4096) {
    printf(" r8 %f %f \n",y[1],z[1]);
    return 1;
  }

  return 0;
}


static int r16(void)
{
  int i;
  long double y[2],z[2];
  y[1] = 4;
  z[1] = 4;
  for(i=0;i<10;i++) {
    y[1] = y[1] + z[1];
    z[1] = y[1];
  }
  if (y[1] != 4096 || z[1] != 4096) {
    printf(" r16 %Lf %Lf \n",y[1],z[1]);
    return 1;
  }

  return 0;
}


static int c8(void)
{
  int i;
  float _Complex y[2],z[2];
  y[1] = 4;
  z[1] = 4;
  for(i=0;i<10;i++) {
    y[1] = y[1] + z[1];
    z[1] = y[1];
  }
  if (crealf(y[1]) != 4096 || crealf(z[1]) != 4096) {
    printf(" c8 %f %f \n",crealf(y[1]),crealf(z[1]));
    return 1;
  }

  return 0;
}


static int c16(void)
{
  int i;
  double _Complex y[2],z[2];
  y[1] = 4;
  z[1] = 4;
  for(i=0;i<10;i++) {
    y[1] = y[1] + z[1];
    z[1] = y[1];
  }
  if (creal(y[1]) != 4096 || creal(z[1]) != 4096) {
    printf(" c16 %f %f \n",creal(y[1]),creal(z[1]));
    return 1;
  }

  return 0;
}


static int c32(void)
{
  int i;
  long double _Complex y[2],z[2];
  y[1] = 4;
  z[1] = 4;
  for(i=0;i<10;i++) {
    y[1] = y[1] + z[1];
    z[1] = y[1];
  }
  if (creal(y[1]) != 4096 || creal(z[1]) != 4096) {
    printf(" c32 %f %f \n",creal(y[1]),creal(z[1]));
    return 1;
  }

  return 0;
}

int main()
{
  int res=0;
  
  res = res + i1();
  res = res + i2();
  res = res + i4();
  res = res + i8();
  res = res + u1();
  res = res + u2();
  res = res + u4();
  res = res + u8();
  res = res + r4();
  res = res + r8();
  res = res + r16();
  res = res + c8();
  res = res + c16();
  res = res + c32();

  if (res == 0) {
    printf(" OK \n");
  } else {
    printf(" NG %d \n",res);
  }
}

