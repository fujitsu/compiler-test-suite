#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int sub1(int n, int m);

int main (void)
{
  int          n=2,m=100;
  sub1(n,m);
  exit(0);
}

int sub1(int n, int m)
{
  int        a[100],b[100],c[100];
  int        i;
  
  for(i=0;i<100;i++) a[i]=b[i]=c[i]=1;
  for(i=n;i<m-1;i+=2) {
    a[i]=i;
    b[i]=a[i];
    c[i]=b[i];
    b[i+1]=c[b[i-1]];
  }
  for(i=0;i<100;i++) printf("%d \n",a[i]);
}
