#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	long int i,n=10 ;
	double   a=1.0,c[10]={
		1.0,2.0,1.0,4.0,1.0,6.0,1.0,8.0,1.0,10.0	};
	double   b=0.0,d[10]={
		1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.1	};
	double         e[10]={
		1.7,2.7,3.7,4.7,5.7,6.7,7.7,8.7,9.7,10.7	};
	for(i=0;i<n;i++)
	{
		if (a != c[i])
		{
			d[i] = d[i] + b - e[i] ;
		}
		else
		{
			b = c[i] + d[i] * 2.0 ;
		}
	}
	printf("b => %g\n",b) ;
	exit (0);
}
