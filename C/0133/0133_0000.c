#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	double a[100] ;
	long int n=100,icount=1,ix,i ;
	icount = 1 ;
	while(icount <= 2)
	{
		ix = 0 ;
		for(i=0;i<n;i++)
		{
			a[i] = 20.0 ;
			if (ix == 1)
			{
				a[i] = pow(sqrt(a[i]),3.0) ;
			}
			else
			{
				ix = 1 ;
			}
		}
		n = 10 ;
		for(i=0;i<n;i++)
		{
			a[i] = -a[i] ;
		}
		for(i=0;i<n;i++) printf("a[%2ld] => %15.7e\n",i,a[i]) ;
		icount = icount + 1 ;
	}
	exit (0);
}
