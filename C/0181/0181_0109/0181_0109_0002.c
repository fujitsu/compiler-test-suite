






#include <stdio.h>

static void float_min()
{

  float  f1=0x1.0p-127f;
  float  f2=0x1.0p-146f;
  float  f3=0x1.0p-149f;

  int *p1=&f1;
  int *p2=&f2;
  int *p3=&f3;

  printf("\n** float **\n");

  printf("0x1.0p-127f  %08x: %g\n",p1[0],f1);
  printf("0x1.0p-146f  %08x: %g\n",p2[0],f2);
  printf("0x1.0p-149f  %08x: %g\n",p3[0],f3);
}

static void double_min()
{
  double d1=0x1.0p-1023;
  double d2=0x1.0p-1042;
  double d3=0x1.0p-1043;
  double d4=0x1.0p-1074;
  int *p1=&d1;
  int *p2=&d2;
  int *p3=&d3;
  int *p4=&d4;

  printf("\n** double **\n");


  printf("0x1.0p-1023  %08x %08x: %g\n",p1[0],p1[1],d1);
  printf("0x1.0p-1042  %08x %08x: %g\n",p2[0],p2[1],d2);
  printf("0x1.0p-1043  %08x %08x: %g\n",p3[0],p3[1],d3);
  printf("0x1.0p-1074  %08x %08x: %g\n",p4[0],p4[1],d4);

}

static void longdouble_min()
{
  long double l1=0x1.0p-16383L;

  int *p1=&l1;

  printf("\n** long double **\n");

  printf("0x1.0p-16383L  : %Lg\n",l1); 
}

int lto_sub_3()
{
  printf("** min test2 **\n");
  float_min();
  double_min();
  longdouble_min();
}
