
#include <stdio.h>
#include <math.h>
static void sub(double*,double*,int );
int main()
{
  double a[20],b[20];
  int i,n,m;

  n=20;
  m=1;
  sub(a,b,n);
  for (i=0;i<20-1;i++){
    a[i] = a[i+m]+b[i];
  }
  for (i=0;i<20;i++){
    printf("  a[%d] ==>",i);
    printf(" %f \n",a[i]);
  }
}
static void sub(a,b,n)
  double a[20];
  double b[20];
int n;
{
  int i;

  for (i=0;i<n;i++){
    a[i] = i;
    b[i] = i;
  }
}
