#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int sub3(int a, int b);

int main()
{
  int   a=10,b=10;
  sub3(a,b);
  printf("##  ##\n");
  exit(0);
}

int sub3(a,b)
int a,b;
{
  int  c,aa,z[20],xx[20];
  int  i,j,k1,n,k,zz;
  
  for(i=0;i<20;i++) z[i]=xx[i]=1;
  c=b;
  k1=1;
  n=a-1;
  
  for(k=k1;k<n;k++)
    {
      zz=(z[k]-z[a])/c;
      aa=exp(zz);
      xx[k]=xx[a]+1-aa;
    }      
  for(i=0;i<20;i++) printf("%d ",xx[i]);
  printf("\n");
}
