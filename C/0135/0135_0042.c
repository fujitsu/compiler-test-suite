#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int sub2(int *m);
int sub1(int n);

int main (void)
{
  int          i,n;

  printf("##  ##\n");
  for(i=0;i<10;i++) {
    n=i;
    sub1(n);
  }
  exit(0);
}

int sub1(int n)
{
  int        a[100],b[100];
  int        i,m;
  
  for(i=0;i<100;i++) a[i]=1;
  for(i=0;i<100;i++) {
    a[i]=i;
    m=a[i]*i;
    sub2(&m);
    b[i]=a[i]+n;
  }
  for(i=0;i<100;i+=10) printf("%d \n",b[i]);
}

int sub2(int *m)
{
  int        i;
  for(i=0;i<10;i++) *m+=i;
}
