
#include <stdio.h>

static void float_rounds()
{
  float f1=0x1.00000100001p+0f;
  float f2=0x1.0000000000000000000000001p+0f;
  float f3=0x1.0000000000000000000000000p+0f;

  float f4=0x1.0000010000000000001000001p+0f;

  float f5=0x1.0000010000000000000000000p+0f; 

  int *p1=&f1;
  int *p2=&f2;
  int *p3=&f3;
  int *p4=&f4;
  int *p5=&f5;

  printf("0  1  0  0 ... 1  %08x: %g\n",p1[0],f1);
  printf("0  0  0  0 ... 1  %08x: %g\n",p2[0],f2);
  printf("0  0  0  0 ... 0  %08x: %g\n",p3[0],f3);
  printf("0  1  0  0 ... 1  %08x: %g\n",p4[0],f4);
  printf("0  1  0  0 ... 0  %08x: %g\n",p5[0],f5);
}

static void double_rounds()
{
  double f1=0x1.00000000000008000000000001p+0;
  double f2=0x1.00000000000008000000000000p+0;
  double f3=0x1.00000000000000000000000001p+0;
  double f4=0x1.00000000000010000000000000p+0;
  double f5=0x1.00000000000000000000000000p+0;

  int *p1=&f1;
  int *p2=&f2;
  int *p3=&f3;
  int *p4=&f4;
  int *p5=&f5;


  printf("0  1  0  0 ... 1  %08x %08x: %g\n",p1[0],p1[1],f1);
  printf("0  1  0  0 ... 0  %08x %08x: %g\n",p2[0],p2[1],f2);
  printf("0  0  0  0 ... 1  %08x %08x: %g\n",p3[0],p3[1],f3);
  printf("1  0  0  0 ... 1  %08x %08x: %g\n",p4[0],p4[1],f4);
  printf("0  0  0  0 ... 0  %08x %08x: %g\n",p5[0],p5[1],f5);

}

static void longdouble_rounds()
{
  long double f1=0x1.00000000000000000000000000008000000000000000001p+0L;
  long double f2=0x1.00000000000000000000000000008000000000000000000p+0L;
  long double f3=0x1.00000000000000000000000000000000000000000000001p+0L;
  long double f4=0x1.00000000000000000000000000010000000000000000001p+0L;
  long double f5=0x1.00000000000000000000000000000000000000000000000p+0L;

  printf("%Lg\n",f1);
  printf("%Lg\n",f2);
  printf("%Lg\n",f3);
  printf("%Lg\n",f4);
  printf("%Lg\n",f5);

}

int lto_sub_6()
{
  printf("** ROUNDS TEST **\n\n");
  printf("L  G  R  S\n");
  printf("-----------------\n");
  float_rounds();
  double_rounds();
  longdouble_rounds();
}
