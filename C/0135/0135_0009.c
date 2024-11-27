#include <stdlib.h>

#include <stdio.h>
#include <math.h>
int soe(long int *n);
int main (void)
{
  long int a[50][50];
  long int i,j,k,m;

  for (i=0; i<50; i++)
    {
      for (j=0; j<50; j++) a[i][j]=0;
    }

  for (i=0; i<48; i++)
    {
      a[i][i/2+1]=i+1;
      for (j=0; j<25; j++)
	{
          m=i;
          soe(&m);
          a[i][j]=m*i;
          m=m+j;	  
	}
      soe(&m);
      a[i][i/2+1]=i+1;
    }

  for(i=0; i<50; i=i+5){
    for(j=0; j<50; j=j+5) printf("a[%ld][%ld] = %ld\n",i,j,a[i][j]);
  }
  exit(0);
}

int soe(long int *n)
{
  long int k;
  
  for (k=0; k<5; k++) *n=*n+k;
}
