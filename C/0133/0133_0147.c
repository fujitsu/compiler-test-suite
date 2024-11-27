#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define  N 100

int main()
{
	static unsigned long int l[N] ;
	float a[N] ;
	long int m[N],i ;
	for(i=0;i<N/4;i++)
	{
		l[i]         = 1 ;
		l[i+N/4]     = 0 ;
		l[i+N/2]     = 1 ;
		l[i+N/4+N/2] = 0 ;
		a[i]         = 0.0 ;
		a[i+N/4]     = 0.0 ;
		a[i+N/2]     = 0.0 ;
		a[i+N/4+N/2] = 0.0 ;
	}
	for(i=0;i<N;i++)
	{
		m[i] = i ;
		if (l[i] == 1) a[m[i]] = 2.8 ;
	}
	for(i=0;i<N;i++) printf("a[%2ld] => %5.1f \n",i,a[i]) ;
	exit (0);
}
