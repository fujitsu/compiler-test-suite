#include <stdlib.h>

#include <stdio.h>
#include <math.h>
int main()
{
  long int a[10]={1,1,1,1,1,1,1,1,1,1};
  long int b[10]={1,1,1,1,1,1,1,1,1,1};
  long int c[10]={1,1,1,1,1,1,1,1,1,1};
  long int d[10]={1,1,1,1,1,1,1,1,1,1};
  long int i,j,m,n;

  for (i=1; i<8; i++)
    {
      a[i-1]=i-4;
      a[i+2]=i;
      for (m=2; m<7; m++)
        {
          d[m-2]=m;
	  b[m]=m;
	  b[m+3]=m-a[i];
	  a[i]=d[m+0]+b[m];
          for (j=4; j<10; j++)
	    {
	      c[j]=c[j-4]-a[i];
	      n=b[m]+a[i]+c[j];
	      c[j]=b[j]+n;
	    }
        }	  
    }
  
  for(i=0; i<10; i++)  printf("a[%ld]=%ld,b[%ld]=%ld,c[%ld]=%ld\n",
                               i,a[i],i,b[i],i,c[i]);
  exit(0);
}
