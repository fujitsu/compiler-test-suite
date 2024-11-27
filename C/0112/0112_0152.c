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
  float a[10],b[10]={1,2,3,4,5,6,7,8,9,10},c[10];
  float d[10]={10,9,8,7,6,5,4,3,2,1};
  int i;

  for(i=0;i<10;i++)  {
    a[i] = 2.0/sqrtf(b[i]);
    c[i] = sqrtf(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }

  for(i=0;i<10;i++)  {
    a[i] = sqrtf(b[i]);
    c[i] = 2.0/sqrtf(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
  for(i=0;i<10;i++)  {
    a[i] = 2.0/sqrtf(b[i]);
    c[i] = sqrtf(d[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }

  for(i=0;i<10;i++)  {
    a[i] = sqrtf(b[i]);
    c[i] = 2.0/sqrtf(d[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
}

int sub_r8()
{
  double a[10],b[10]={1,2,3,4,5,6,7,8,9,10},c[10];
  double d[10]={10,9,8,7,6,5,4,3,2,1};
  int i;

  for(i=0;i<10;i++)  {
    a[i] = 2.0/sqrt(b[i]);
    c[i] = sqrt(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }

  for(i=0;i<10;i++)  {
    a[i] = sqrt(b[i]);
    c[i] = 2.0/sqrt(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }

  for(i=0;i<10;i++)  {
    a[i] = 2.0/sqrt(b[i]);
    c[i] = sqrt(d[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }

  for(i=0;i<10;i++)  {
    a[i] = sqrt(b[i]);
    c[i] = 2.0/sqrt(d[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
}

