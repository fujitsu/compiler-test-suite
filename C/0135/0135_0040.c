#include <stdlib.h>


#include <stdio.h>
#include <math.h>

int main()
{
  int        n=2,m=100;
  int        i;
  int        a[100],b[100],c[100];
  
  for(i=0;i<100;i++) {
    a[i]=b[i]=i;
  }

  for(i=1;i<99;i+=2) {
    a[i]=i;
    b[i]=a[i];
    c[a[i]]=i;
    a[i+1]=c[b[i]];
    b[i+1]=c[a[i-1]];
    a[i]=c[i]+b[i]+a[i];
  }
  for(i=0;i<100;i++) printf("%d \n",a[i]);
  exit(0);
}
