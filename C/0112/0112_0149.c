#include <stdio.h>
#include "math.h"
int sub_r8();
int sub_r4();
int main()
{
  printf("\n ## r4 ## \n");
  sub_r4();
  printf("\n ## r8 ## \n");
  sub_r8();
}

int sub_r4()
{
  float a[10],b[10]={1,2,3,4,5,6,7,8,9,10};
  int i;

  for(i=0;i<10;i++)  {
    a[i] = 1.0/sqrtf(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f \n",a[i]);
  }
}

int sub_r8()
{
  double a[10],b[10]={1,2,3,4,5,6,7,8,9,10};
  int i;

  for(i=0;i<10;i++)  {
    a[i] = 1.0/sqrt(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f \n",a[i]);
  }
}

