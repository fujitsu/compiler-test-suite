
#include <stdio.h>
#include <math.h>

int main()
{
  double a[20],b[20],c[20],d[20],e[20];
  int i,j,n,m;

  n=20;
  m=5;

  for (i=0;i<n;i++){
    a[i] = i;
    b[i] = i;
    c[i] = 2;
    d[i] = 3;
    e[i] = 2;
  }
  for (i=0;i<20-1;i++){
    a[i] = b[i] * c[i] * d[i];
    b[i] = a[i] + d[i] * e[i];
    a[i] = b[i] * a[i+1] * d[i];
  }
  for (i=0;i<20;i++){
    printf("  a[%d] ==> b[%d] ==>",i,i);
    printf(" %f %f \n",a[i],b[i]);
  }
}

