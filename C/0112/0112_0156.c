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
  float a[10],b[10]={1,2,3,4,5,6,7,8,9,10},r4,r4b,c[10];
  int i;
  r4 = x[0];
  r4b = x[1];
  for(i=0;i<10;i++)  {
    a[i] = r4/sqrtf(b[i]);
    c[i] = sqrtf(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
  for(i=0;i<10;i++)  {
    a[i] = sqrtf(b[i]);
    c[i] = r4/sqrtf(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
  for(i=0;i<10;i++)  {
    a[i] = r4/sqrtf(b[i]);
    c[i] = r4/sqrtf(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
  for(i=0;i<10;i++)  {
    a[i] = r4/sqrtf(b[i]);
    c[i] = r4b/sqrtf(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
}

int sub_r8()
{
  double a[10],b[10]={1,2,3,4,5,6,7,8,9,10},r8,r8b,c[10];
  int i;
  r8 = x[1];
  r8b = x[0];

  for(i=0;i<10;i++)  {
    a[i] = r8/sqrt(b[i]);
    c[i] = sqrt(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
  for(i=0;i<10;i++)  {
    a[i] = sqrt(b[i]);
    c[i] = r8/sqrt(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
  for(i=0;i<10;i++)  {
    a[i] = r8/sqrt(b[i]);
    c[i] = r8/sqrt(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
  for(i=0;i<10;i++)  {
    a[i] = r8/sqrt(b[i]);
    c[i] = r8b/sqrt(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
}

