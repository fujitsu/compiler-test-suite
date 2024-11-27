#include <stdlib.h>


#include <stdio.h>
#include <math.h>

int main()
{
  int        i,n;
  float      a[100],b[100];

  a[0]=b[0]=1.0;
  a[1]=b[1]=2.0;
  for(i=2;i<100;i++) {    
    a[i]=i;
    b[i]=a[i];
    a[i]=a[i-2]+1;
    b[i]+=i;
  }
  printf("##  ##\n");
  for(i=0;i<100;i++) {
    printf("%f ",a[i]);
    n=i%9;
    if(n==0 && i!=0) printf("\n");
  }
  for(i=0;i<100;i++) {
    printf("%f ",b[i]);
    n=i%9;
    if(n==0 && i!=0) printf("\n");
  }
  exit(0);
}
