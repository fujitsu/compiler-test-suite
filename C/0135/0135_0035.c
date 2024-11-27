#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int sub(int n, int m, int inc);

int main (void)
{
  int n=1,m=50,inc=3;

  sub(n,m,inc);
  exit(0);
}

int sub(int n, int m, int inc)
{
  int i;
  float      a[50],t;

  a[0]=a[1]=1.0;
  for(i=2;i<m;i++) {    
    a[n]=(float)n;
    t=a[n]*sin(n);
    n+=1;
    a[i]=n+a[i-2]+t;
  }
  printf("## a ##\n");
  for(i=0;i<50;i++) printf("%f ",a[i]);
  printf("\n");
}
