#include <stdlib.h>



#include <stdio.h>
#include <math.h>
int sub1(int n, float x);

int main (void)
{
  int        n=100;
  float      x=5.0;

  sub1(n,x);
  exit(0);
}

int sub1(int n, float x)
{
  float      a[100],b[100];
  int        i,j;

  a[0]=b[0]=1.0;
  a[1]=b[1]=2.0;
  for(i=2;i<n;i++) {    
    a[i]=i;
    b[i]=a[i];
    a[i]=a[i-2]+x;
    b[i]=b[i]+i;
  }
  printf("##  ##\n");
  for(i=0;i<100;i++) {
    printf("%f ",a[i]);
    j=i%9;
    if(j==0 && i!=0) printf("\n");
  }
  for(i=0;i<100;i++) {
    printf("%f ",b[i]);
    j=i%9;
    if(j==0 && i!=0) printf("\n");
  }
}
