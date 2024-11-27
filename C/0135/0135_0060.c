#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int sub4(int a, int b);

int main()
{
  int   a=10,b=10;
  sub4(a,b);
  exit(0);
}

int sub4(a,b)
int a,b;
{
  int  z1[20],z2[20],z3[20][20],z4[20][20];
  int  i,j,k1,n,k;
  


  for(i=0;i<20;i++)
    {
      for(j=0;j<20;j++)
	{
	  z3[i][j]=z4[i][j]=1;
	}
      z1[i]=z2[i]=1;
    }
  k1=a;
  n=b+10;  
  for(k=0;i<k1;k++)
    {
      z1[k]=n;
      z2[k]=n;
      for(i=0;i<n;i++)
	{
	  z3[i][k]=-1;
	  z4[i][k]=0;
	}
    }

  printf("##    ##\n");
  for(i=0;i<20;i++) printf("%d ",z1[i]);
  printf("\n");
  for(i=0;i<20;i++) printf("%d ",z2[i]);
  printf("\n");
  for(i=0;i<20;i++) {
    for(j=0;j<20;j++)  printf("%d ",z3[i][j]);
    printf("\n");
    }
  for(i=0;i<20;i++) {
    for(j=0;j<20;j++)  printf("%d ",z4[i][j]);
    printf("\n");
    }
}
