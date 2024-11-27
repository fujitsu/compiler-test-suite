#include <stdio.h>
#include "math.h"
int sub_r8();
int sub_r4();
float x[2]={1,2};
double y[2]={1,2};
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
  int i;

  for(i=0;i<10;i++)  {
    a[i] = x[0]/sqrtf(b[i]);
    c[i] = sqrtf(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
  for(i=0;i<10;i++)  {
    a[i] = sqrtf(b[i]);
    c[i] = x[0]/sqrtf(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
  for(i=0;i<10;i++)  {
    a[i] = x[0]/sqrtf(b[i]);
    c[i] = x[0]/sqrtf(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
  for(i=0;i<10;i++)  {
    a[i] = x[0]/sqrtf(b[i]);
    c[i] = x[1]/sqrtf(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
}

int sub_r8()
{
  double a[10],b[10]={1,2,3,4,5,6,7,8,9,10},c[10];
  int i;

  for(i=0;i<10;i++)  {
    a[i] = y[1]/sqrt(b[i]);
    c[i] = sqrt(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
  for(i=0;i<10;i++)  {
    a[i] = sqrt(b[i]);
    c[i] = y[1]/sqrt(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
  for(i=0;i<10;i++)  {
    a[i] = y[1]/sqrt(b[i]);
    c[i] = y[1]/sqrt(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
  for(i=0;i<10;i++)  {
    a[i] = y[1]/sqrt(b[i]);
    c[i] = y[0]/sqrt(b[i]);
  }

  for(i=0;i<10;i++)  {
    printf(" %f %f \n",a[i],c[i]);
  }
}
