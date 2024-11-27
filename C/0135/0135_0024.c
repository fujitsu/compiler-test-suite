#include <stdlib.h>



#include <stdio.h>
#include <math.h>

int main()
{
  int        i,n=100;
  float      a[100],b[100];
  float      y=0.0;

  a[0]=b[0]=1.0;
  a[1]=b[1]=2.0;
  for(i=2;i<n;i++) {    
    a[i]=i;
    b[i]=a[i];
    if(y>n) goto lvl_1;
    a[i]=a[i-2]+y;
  lvl_1:
    b[i]+=i;
    b[i]/=i;
    b[i]*=i;
    b[i]-=i;
  }
  printf("##  ##\n");
  for(i=0;i<100;i++) printf("%f ",a[i]);
  printf("\n");
  for(i=0;i<100;i++) printf("%f ",b[i]);
  printf("\n");
  exit(0);
}
