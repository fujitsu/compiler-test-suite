#include <stdlib.h>

#include <stdio.h>
#include <math.h>
int main()
{
  float a[25]={1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,
               1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,
               1.,1.,1.,1.,1.};
  float b[25]={1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,
               1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,
               1.,1.,1.,1.,1.};
  float c[25][25];
  long int i,j;		     

  for (i=0; i<25; i++)
    {
      for (j=0; j<25; j++) c[i][j]=1.0;
    }

  for (i=23; i>=0; i--)
    {
      a[i]=i/10+a[i];
      for (j=3; j<25; j++)
	{
	  b[j]=j*a[j]/(i+1);
	  a[j]=c[i][j-1];
	  c[i][j]=b[j]+a[j];
	}
      a[i+1]=c[i][1];
    }

  for(i=0; i<25; i++) {
    for(j=0; j<25; j++) printf("c[%ld][%ld] = %f\n",i,j,c[i][j]);
  }
  exit(0);
}
