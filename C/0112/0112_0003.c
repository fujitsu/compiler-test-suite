#include "stdio.h"
#include <complex.h>

static int i1(void)
{
  int i;
  char y,z;
  y = 4;
  z = 4;
  for(i=0;i<4;i++) {
    z = y + 1;
    y = y + z;
  }
  if (y != 79 || z != 40) {
    printf(" i1 %d %d \n",y,z);
    return 1;
  }

  return 0;
}

static int i2(void)
{
  int i;
  short int y,z;
  y = 4;
  z = 4;
  for(i=0;i<10;i++) {
    z = y + 1;
    y = y + z;
  }
  if (y != 5119 || z != 2560) {
    printf(" i2 %d %d \n",y,z);
    return 1;
  }

  return 0;
}

static int i4(void)
{
  int i;
  int y,z;
  y = 4;
  z = 4;
  for(i=0;i<10;i++) {
    z = y + 1;
    y = y + z;
  }
  if (y != 5119 || z != 2560) {
    printf(" i4 %d %d \n",y,z);
    return 1;
  }

  return 0;
}

static int i8(void)
{
  int i;
  long long int y,z;
  y = 4;
  z = 4;
  for(i=0;i<10;i++) {
    z = y + 1;
    y = y + z;
  }
  if (y != 5119 || z != 2560) {
    printf(" i8 %lld %lld \n",y,z);
    return 1;
  }

  return 0;
}


static int u1(void)
{
  int i;
  unsigned char y,z;
  y = 4;
  z = 4;
  for(i=0;i<4;i++) {
    z = y + 1;
    y = y + z;
  }
  if (y != 79 || z != 40) {
    printf(" u1 %d %d \n",y,z);
    return 1;
  }

  return 0;
}

static int u2(void)
{
  int i;
  unsigned short int y,z;
  y = 4;
  z = 4;
  for(i=0;i<10;i++) {
    z = y + 1;
    y = y + z;
  }
  if (y != 5119 || z != 2560) {
    printf(" u2 %d %d \n",y,z);
    return 1;
  }

  return 0;
}

static int u4(void)
{
  int i;
  unsigned int y,z;
  y = 4;
  z = 4;
  for(i=0;i<10;i++) {
    z = y + 1;
    y = y + z;
  }
  if (y != 5119 || z != 2560) {
    printf(" u4 %d %d \n",y,z);
    return 1;
  }

  return 0;
}

static int u8(void)
{
  int i;
  unsigned long long int y,z;
  y = 4;
  z = 4;
  for(i=0;i<10;i++) {
    z = y + 1;
    y = y + z;
  }
  if (y != 5119 || z != 2560) {
    printf(" u8 %llu %llu \n",y,z);
    return 1;
  }

  return 0;
}


static int r4(void)
{
  int i;
  float y,z;
  y = 4;
  z = 4;
  for(i=0;i<10;i++) {
    z = y + 1;
    y = y + z;
  }
  if (y != 5119 || z != 2560) {
    printf(" r4 %f %f \n",y,z);
    return 1;
  }

  return 0;
}


static int r8(void)
{
  int i;
  double y,z;
  y = 4;
  z = 4;
  for(i=0;i<10;i++) {
    z = y + 1;
    y = y + z;
  }
  if (y != 5119 || z != 2560) {
    printf(" r8 %f %f \n",y,z);
    return 1;
  }

  return 0;
}


static int r16(void)
{
  int i;
  long double y,z;
  y = 4;
  z = 4;
  for(i=0;i<10;i++) {
    z = y + 1;
    y = y + z;
  }
  if (y != 5119 || z != 2560) {
    printf(" r16 %Lg %Lg \n",y,z);
    return 1;
  }

  return 0;
}


static int c8(void)
{
  int i;
  float _Complex y,z;
  y = 4;
  z = 4;
  for(i=0;i<10;i++) {
    z = y + 1;
    y = y + z;
  }
  if (crealf(y) != 5119 || crealf(z) != 2560) {
    printf(" c8 %g %g \n",crealf(y),crealf(z));
    return 1;
  }

  return 0;
}


static int c16(void)
{
  int i;
  double _Complex y,z;
  y = 4;
  z = 4;
  for(i=0;i<10;i++) {
    z = y + 1;
    y = y + z;
  }
  if (creal(y) != 5119 || creal(z) != 2560) {
    printf(" c16 %g %g \n",creal(y),creal(z));
    return 1;
  }

  return 0;
}


static int c32(void)
{
  int i;
  long double _Complex y,z;
  y = 4;
  z = 4;
  for(i=0;i<10;i++) {
    z = y + 1;
    y = y + z;
  }
  if (creall(y) != 5119 || creall(z) != 2560) {
    printf(" c32 %Lg %Lg \n",creall(y),creall(z));
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

