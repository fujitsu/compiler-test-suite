#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 50

int main()
{
	double a1[N],a2[N],a3[N],a4[N],a5[N],a6[N],a7[N],a8[N],a9[N],
	x1[N],x2[N],x3[N],x4[N],x5[N],x6[N],x7[N],x8[N],x9[N] ;
	static unsigned long int m[N],i ;
	long int l[N] ;
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
		a1[i] = (double)i ;
		a2[i] = (double)i + (double)2 ;
		a3[i] = (double)i * (double)5 ;
		a4[i] = (double)i - (double)4 ;
		a5[i] = sqrt((double)i) ;
		a6[i] = a5[i] - 0.046 ;
		a7[i] = (double)i + (double)3 ;
		a8[i] = 1.0 ;
		a9[i] = (a7[i] + a8[i]) / 4.5 ;
	}
	for(i=0;i<N;i++)
	{
		l[i]  = i ;
		x1[i] = a1[i] ;
		x2[i] = a2[i] ;
		x3[i] = a3[i] ;
		x4[i] = a4[i] ;
		x5[i] = a5[i] ;
		x6[i] = a6[i] ;
		x7[i] = a7[i] ;
		x8[i] = a8[i] ;
		x9[i] = a9[i] ;
		a1[i] = sqrt(fabs(x1[i])) ;
		a2[i] = x2[i] * 2.0 ;
		if (m[i] == 1)
		{
			a3[l[i]] = 9.9 ;
		}
		a4[i] = (x1[i] + x2[i]) / 4.3 ;
		x3[i] = x1[i] * 2.5 ;
		x3[i] = x2[i] + 0.1 ;
		a5[i] = x5[i] + 0.1 ;
		a6[i] = x6[i] ;
		if (a7[i] >  5.0)
		{
			a8[i] = x8[i] - 0.5 ;
		}
		else
		{
			a8[i] = x8[i] + 5.0 ;
		}
		a9[i] = x9[i] / 3.8 ;
	}
	for(i=0;i<N;i++)
	{
		printf("a1[%2ld]=%f  a2[%2ld]=%f  a3[%2ld]=%f \n",
		    i,a1[i],i,a2[i],i,a3[i]) ;
		printf("a4[%2ld]=%f  a5[%2ld]=%f  a6[%2ld]=%f \n",
		    i,a4[i],i,a5[i],i,a6[i]) ;
		printf("a7[%2ld]=%f  a8[%2ld]=%f  a9[%2ld]=%f \n",
		    i,a7[i],i,a8[i],i,a9[i]) ;
	}
	exit (0);
}
