#include "stdio.h"
#include <complex.h>
static int r16(void);
static int r8(void);
static int r4(void);
static int u8(void);
static int u4(void);
static int u2(void);
static int u1(void);
static int i8(void);
static int i4(void);
static int i2(void);
static int i1(void);
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
  if (res == 0) {
    printf(" OK \n");
  } else {
    printf(" NG %d \n",res);
  }
}

static int i1(void)
{
  int i;
  char a[10]={0,0,0,0,0,0,0,0,0,0};
  char b[10]={1,2,3,4,5,6,7,8,9,10};
  char c[10]={2,2,2,2,2,2,2,2,2,2};
  for(i=0;i<10;i++) {
    if(i > 3) a[i] = b[i] + c[i];
  }

  for(i=0;i<10;i++) {
    if (i > 3) {
      if (a[i] != i+3) {
	return 1;
      }
    } else {
      if (a[i] != 0) {
	return 1;
      }
    }
  }
  return 0;
}
static int i2(void)
{
  int i;
  short a[10]={0,0,0,0,0,0,0,0,0,0};
  short b[10]={1,2,3,4,5,6,7,8,9,10};
  short c[10]={2,2,2,2,2,2,2,2,2,2};
  for(i=0;i<10;i++) {
    if(i > 3) a[i] = b[i] + c[i];
  }

  for(i=0;i<10;i++) {
    if (i > 3) {
      if (a[i] != i+3) {
	return 1;
      }
    } else {
      if (a[i] != 0) {
	return 1;
      }
    }
  }
  return 0;
}
static int i4(void)
{
  int i;
  int a[10]={0,0,0,0,0,0,0,0,0,0};
  int b[10]={1,2,3,4,5,6,7,8,9,10};
  int c[10]={2,2,2,2,2,2,2,2,2,2};
  for(i=0;i<10;i++) {
    if(i > 3) a[i] = b[i] + c[i];
  }

  for(i=0;i<10;i++) {
    if (i > 3) {
      if (a[i] != i+3) {
	return 1;
      }
    } else {
      if (a[i] != 0) {
	return 1;
      }
    }
  }
  return 0;
}
static int i8(void)
{
  int i;
  long int a[10]={0,0,0,0,0,0,0,0,0,0};
  long int b[10]={1,2,3,4,5,6,7,8,9,10};
  long int c[10]={2,2,2,2,2,2,2,2,2,2};
  for(i=0;i<10;i++) {
    if(i > 3) a[i] = b[i] + c[i];
  }

  for(i=0;i<10;i++) {
    if (i > 3) {
      if (a[i] != i+3) {
	return 1;
      }
    } else {
      if (a[i] != 0) {
	return 1;
      }
    }
  }
  return 0;
}

static int u1(void)
{
  int i;
  unsigned char a[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned char b[10]={1,2,3,4,5,6,7,8,9,10};
  unsigned char c[10]={2,2,2,2,2,2,2,2,2,2};
  for(i=0;i<10;i++) {
    if(i > 3) a[i] = b[i] + c[i];
  }

  for(i=0;i<10;i++) {
    if (i > 3) {
      if (a[i] != i+3) {
	return 1;
      }
    } else {
      if (a[i] != 0) {
	return 1;
      }
    }
  }
  return 0;
}
static int u2(void)
{
  int i;
  unsigned short a[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned short b[10]={1,2,3,4,5,6,7,8,9,10};
  unsigned short c[10]={2,2,2,2,2,2,2,2,2,2};
  for(i=0;i<10;i++) {
    if(i > 3) a[i] = b[i] + c[i];
  }

  for(i=0;i<10;i++) {
    if (i > 3) {
      if (a[i] != i+3) {
	return 1;
      }
    } else {
      if (a[i] != 0) {
	return 1;
      }
    }
  }
  return 0;
}
static int u4(void)
{
  int i;
  unsigned int a[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned int b[10]={1,2,3,4,5,6,7,8,9,10};
  unsigned int c[10]={2,2,2,2,2,2,2,2,2,2};
  for(i=0;i<10;i++) {
    if(i > 3) a[i] = b[i] + c[i];
  }

  for(i=0;i<10;i++) {
    if (i > 3) {
      if (a[i] != i+3) {
	return 1;
      }
    } else {
      if (a[i] != 0) {
	return 1;
      }
    }
  }
  return 0;
}
static int u8(void)
{
  int i;
  unsigned long int a[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned long int b[10]={1,2,3,4,5,6,7,8,9,10};
  unsigned long int c[10]={2,2,2,2,2,2,2,2,2,2};
  for(i=0;i<10;i++) {
    if(i > 3) a[i] = b[i] + c[i];
  }

  for(i=0;i<10;i++) {
    if (i > 3) {
      if (a[i] != i+3) {
	return 1;
      }
    } else {
      if (a[i] != 0) {
	return 1;
      }
    }
  }
  return 0;
}


static int r4(void)
{
  int i;
  float a[10]={0,0,0,0,0,0,0,0,0,0};
  float b[10]={1,2,3,4,5,6,7,8,9,10};
  float c[10]={2,2,2,2,2,2,2,2,2,2};
  for(i=0;i<10;i++) {
    if(i > 3) a[i] = b[i] + c[i];
  }

  for(i=0;i<10;i++) {
    if (i > 3) {
      if (a[i] != i+3) {
	return 1;
      }
    } else {
      if (a[i] != 0) {
	return 1;
      }
    }
  }
  return 0;
}
static int r8(void)
{
  int i;
  double a[10]={0,0,0,0,0,0,0,0,0,0};
  double b[10]={1,2,3,4,5,6,7,8,9,10};
  double c[10]={2,2,2,2,2,2,2,2,2,2};
  for(i=0;i<10;i++) {
    if(i > 3) a[i] = b[i] + c[i];
  }

  for(i=0;i<10;i++) {
    if (i > 3) {
      if (a[i] != i+3) {
	return 1;
      }
    } else {
      if (a[i] != 0) {
	return 1;
      }
    }
  }
  return 0;
}
static int r16(void)
{
  int i;
  long double a[10]={0,0,0,0,0,0,0,0,0,0};
  long double b[10]={1,2,3,4,5,6,7,8,9,10};
  long double c[10]={2,2,2,2,2,2,2,2,2,2};
  for(i=0;i<10;i++) {
    if(i > 3) a[i] = b[i] + c[i];
  }

  for(i=0;i<10;i++) {
    if (i > 3) {
      if (a[i] != i+3) {
	return 1;
      }
    } else {
      if (a[i] != 0) {
	return 1;
      }
    }
  }
  return 0;
}
