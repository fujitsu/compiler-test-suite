#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 50

int main()
{
	double a1[N],a2[N],a3[N],a4[N],a5[N],a6[N],a7[N],a8[N],a9[N],
	x1[N],x2[N],x3[N],x4[N],x5[N],x6[N],x7[N],x8[N],x9[N] ;
	double comp ;
	static unsigned long int m[N] ;
	long int l[N],i ;
	for(i=0;i<N/5;i++)
	{
		m[i]       = 1 ;
		m[i+N/5]   = 0 ;
		m[i+N/5*2] = 0 ;
		m[i+N/5*3] = 1 ;
		m[i+N/5*4] = 0 ;
	}
	for(i=0;i<N;i++)
	{
		a1[i] = i ;
		a2[i] = sqrt((double)i) ;
		a3[i] = a1[i] + a2[i] ;
		a4[i] = 0.9 ;
		a5[i] = (double)i + 4.9742 ;
		a6[i] = (a3[i] + a4[i]) / 5.0 ;
		a7[i] = a6[i] - 8.8 ;
		a8[i] = fabs(a7[i]) ;
		a9[i] = a8[i] ;
		x7[i] = x8[i] = 0.0;
	}
	for(i=0;i<N;i++)
	{
		l[i]  = i ;
		x1[i] = a1[i] + 0.3 ;
		x2[i] = a2[i] - 0.6 ;
		x3[i] = a3[i] - 0.54 ;
		a1[i] = x1[i] + x2[i] ;
		x4[i] = a2[i] + x2[i] - 9.9 ;
		x5[i] = sqrt(fabs(a5[i])) - 0.86 ;
		x6[i] = sqrt(fabs(a6[i])) + 4.3 ;
		if (m[i] == 1) x7[l[i]] = 1.0 ;
		x7[i] = x7[i] + 9.9 ;
		x8[i] = x8[i] - 0.2 ;
		x9[i] = (a9[i] + a1[i]) / 3.5 ;
		a1[i] = x1[i] + x2[i] + x3[i] + x4[i] + x5[i] ;
		a2[i] = x6[i] + x7[i] + x8[i] + x9[i] ;
		comp  = (a1[4] + a2[4]) / 2.0 ;
		if (comp > 10.0)
		{
			a3[i] = -x1[i] + x2[i] - x3[i] - x4[i] + x5[i] ;
		}
		else
		{
			a4[i] = x6[i] + x7[i] - x8[i] - x9[i] ;
		}
	}
	for(i=0;i<N;i++)
	{
		printf("x1[%2ld]=%g  x2[%2ld]=%g  x3[%2ld]=%g \n",
		    i,x1[i],i,x2[i],i,x3[i]) ;
		printf("x4[%2ld]=%g  x5[%2ld]=%g  x6[%2ld]=%g \n",
		    i,x4[i],i,x5[i],i,x6[i]) ;
		printf("x7[%2ld]=%g  x8[%2ld]=%g  x9[%2ld]=%g \n",
		    i,x7[i],i,x8[i],i,x9[i]) ;
	}
	exit (0);
}
