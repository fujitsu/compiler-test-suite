#include <stdio.h>
#include "math.h"
int sub_r8();
int sub_r4();
float x[2]={1,2};
int main()
{
  printf("\n ## r4 ## \n");
  sub_r4();
  printf("\n ## r8 ## \n");
  sub_r8();
}

int sub_r4()
{
  float a[10],b[10]={1,2,3,4,5,6,7,8,9,10},r4;
  int i;
  r4 = x[0];
  for(i=0;i<10;i++)  {
    a[i] = r4/sqrtf(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f \n",a[i]);
  }
}

int sub_r8()
{
  double a[10],b[10]={1,2,3,4,5,6,7,8,9,10},r8;
  int i;
  r8 = x[1];
  for(i=0;i<10;i++)  {
    a[i] = r8/sqrt(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f \n",a[i]);
  }
}

