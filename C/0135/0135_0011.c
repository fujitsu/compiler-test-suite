#include <stdlib.h>

#include <stdio.h>
#include <math.h>
int main()
{
  long int a[100]={1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
                   1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
                   1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
                   1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
                   1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1};
  long int i,j,m,n;

  for (i=1; i<99; i++)
    {
      if (i<=50)
	{
	  n=10%i;
	  if (n==0)
	    {
	      a[i+1]=i;
	    }
	  else
	    {
	      a[i-1]=n*i+a[n];
	    }
	}
      else
	{
	  n=5%i;
	  a[i]=a[99-i]+i;
	  a[i-1]=a[n+1]+n+a[i];
	}
    }
  
  for(i=0; i<100; i++)  printf("a[%ld]=%ld\n",i,a[i]);
  exit(0);
}
