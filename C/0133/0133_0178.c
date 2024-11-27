#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 10

int main()
{
	double a[N]={
				2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0		};
	double c[N]={
				9.0,9.0,9.0,9.0,9.0,9.0,9.0,9.0,9.0,9.0		};
	double b[N],d[N] ;
	long int l[N]={
				6,6,6,6,6,6,6,6,6,6		},
	i ;
	static unsigned long int m[N]={
				0,0,0,0,0,0,0,0,0,0		};
	float rc ;
	rc = 4.6 ;
	for(i=0;i<N;i++)
	{

		if (m[i] == 1)  b[i] = c[l[i]] ;
		d[0] = a[i] ;
		if (rc <= 10.0)
		{
			d[i] = c[i] ;
		}
	}
	for(i=0;i<N;i++) printf("d[%ld] => %8.3f \n",i,d[i]) ;
	exit (0);
}
