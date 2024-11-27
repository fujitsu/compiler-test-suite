#include <stdlib.h>


#include <stdio.h>
#include <math.h>

int main()
{
  int        n=2,m=100;
  int        i;
  int        a[100],b[100],c=2;
  
  for(i=0;i<100;i++) {
    a[i]=1;
    b[i]=5;
  }
  
  for(i=0;i<97;i+=2) {
    a[i+1]=a[i];
    a[i]=i+c;
    b[i+1]=b[a[i]]+a[i+1];
    b[i]=b[a[i]]+a[i+1];
  }
  for(i=0;i<100;i++) printf("%d \n",a[i]);
  exit(0);
}
