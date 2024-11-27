#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 100

int main()
{
	float a[N],b[N],c[N],y ;
	static unsigned long int l[N] ;
	long int i ;
	for(i=0;i<N;i++)
	{
		b[i]=1.5 ;
		c[i]=9.9 ;
		a[i]=0.0 ;
	}
	y = 1.9 ;
	for(i=0;i<N;i++)
	{
		l[i] = i ;
		if (y > 0.0)
		{
			a[l[i]] = b[i] + c[i] ;
		}
	}
	for(i=0;i<N;i++) printf("a[%2ld] => %5.1f \n",i,a[i]) ;
	exit (0);
}
