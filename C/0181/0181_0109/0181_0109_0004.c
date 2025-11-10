






#include <stdio.h>

static void float_min()
{

  float  f1=0xeee.eeep-26f;
  float  f2=0xabc.abcp-44f;
  float  f3=0x0.abcabcp-46f;

  int *p1=&f1;
  int *p2=&f2;
  int *p3=&f3;

  printf("\n** float **\n");

  printf("%08x: %g\n",p1[0],f1);
  printf("%08x: %g\n",p2[0],f2);
  printf("%08x: %g\n",p3[0],f3);
}

static void double_min()
{
  double d1=0xeee.abcdeabcabp-23;
  int *p1=&d1;
  printf("\n** double **\n");

  printf("%08x %08x: %g\n",p1[0],p1[1],d1);


}

static void longdouble_min()
{
  long double l1=0xeeeee.eeeeeeeeccccccccccccaaap-6383L;

  int *p1=&l1;

  printf("\n** long double **\n");

  printf("%Lg\n",l1); 
}

int lto_sub_5()
{
  printf("** min test2 **\n");
  float_min();
  double_min();
  longdouble_min();
}
