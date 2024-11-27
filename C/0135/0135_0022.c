#include <stdlib.h>



#include <stdio.h>
#include <math.h>

int main()
{
  int        i,j,n=100;
  float      a[100],b[100];
  float      x=0.0,y=0.0;

  a[0]=b[0]=1.0;
  a[1]=b[1]=2.0;
  for(i=2;i<n;i++) {    
    a[i]=i;
    b[i]=a[i];
    if(b[i]<i) {
      x=i+1.0;
      b[i]=b[i]+x;
    }
    a[i]=a[i-2]+y;
    y+=n;
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
  exit(0);
}
