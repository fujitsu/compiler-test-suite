#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	long int i,n=10 ;
	unsigned long int l[10]={
		0,1,0,1,0,1,0,1,0,1	};
	double   a=0.0,c[10]={
		1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0	};
	double   b=0.0,d[10]={
		1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.1	};
	for(i=0;i<n;i++)
	{
		if (l[i] == 1)
		{
			a = a + 1.0 ;
			b = (b + d[i]) + (a + c[i]) ;
		}
	}
	printf("b => %g\n",b) ;
	exit (0);
}
