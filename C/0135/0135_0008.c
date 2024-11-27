#include <stdlib.h>

#include <stdio.h>
#include <math.h>
int main()
{
  long int a[10000],b=0,c[10000];
  long int i,j,k;

  for (i=0   ; i<10000; i++) c[i]=1;
  for (i=0   ; i<200  ; i++) a[i]=20;
  for (i=200 ; i<500  ; i++) a[i]=30;
  for (i=500 ; i<1000 ; i++) a[i]=50;
  for (i=1000; i<2000 ; i++) a[i]=100;
  for (i=2000; i<5000 ; i++) a[i]=300;
  for (i=5000; i<10000; i++) a[i]=500;

  for (i=0; i<9998; i++)
    {
      if (a[i]<=i)
	{
          for (j=0; j<10000; j++)
	    {
              c[j]=a[j]+j;
	    }
	}
      else
	{
          for (k=a[i]; k<a[i+1]; k++)
	    {
              c[i]=a[k]+k+c[k];
	      c[i]=a[i]+c[i];
	    }
          b=(b>a[i])?b:a[i];
	}
    }

  for(i=0; i<10000; i=i+100) printf("c[%ld] = %ld\n",i,c[i]);
  exit(0);
}
