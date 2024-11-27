#include <stdlib.h>

    
#include <stdio.h>
#include <math.h>

union {
  int        nam;
  int        n;
}name_n;

int main()
{
  float      a[100],b[100];
  int        i,j;
  
  for(i=0;i<100;i++) {
    a[i]=i;
    b[i]=a[i];
    a[i]=a[i]+b[i];
    b[i]=b[i]+a[i];
    name_n.n=b[i]+a[i];
    printf("nam=%d ",name_n.nam);
  }
  printf("\n");
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
