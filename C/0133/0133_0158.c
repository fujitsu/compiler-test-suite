#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 20

int main()
{
	double a1[N],a2[N],a3[N],a4[N],a5[N],a6[N],a7[N],a8[N],a9[N],
	x1[N],x2[N],x3[N],x4[N],x5[N],x6[N],x7[N],x8[N],x9[N];
	long int l[N]={
				1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1		},
	i ;
	double xx ;
	static struct tag1
	{
		double real,imag ;
	} z[N] ;
	for(i=0;i<N;i++)
	{
		a1[i] = 1.1 ;
		a2[i] = 5.0 ;
		a3[i] = -5.3 ;
		a4[i] = 9.9 ;
		a5[i] = 7.9 ;
		a6[i] = 4.4 ;
		a7[i] = -0.1 ;
		a8[i] = 8.8 ;
		a9[i] = 6.6 ;
	}
	for(i=0;i<N;i++)
	{
		x1[i] = a1[i] ;
		x2[i] = a2[i] ;
		x3[i] = a3[i] ;
		x4[i] = a4[i] ;
		x5[i] = a5[i] ;
		xx = 5.0 ;
		if (xx > a1[9])
		{
			a1[i] = a2[i] + a3[i] + a4[i] ;
		}
		a1[l[i]] = 1.0 ;
		x6[i] = sqrt(fabs(a1[i])) ;
		z[i].real = a2[i] ;
		x7[i] = a7[i] ;
		x8[i] = a8[i] ;
		x9[i] = a9[i] ;
		a1[i] = x1[i] + 0.1 ;
		a2[i] = x2[i] - 0.1 ;
		a3[i] = (a1[i] + a2[i]) / 2.0 ;
		a4[i] = x4[i] - 0.9 ;
		a5[l[i]] = -a1[i] - 0.99999 ;
		a6[i] = sqrt(fabs(x6[i])) ;
		a7[i] = a6[i] ;
		a8[i] = 1.0 ;
		a9[i] = -3.89 ;
	}
	for(i=0;i<N;i++)
	{
		printf("a1[%ld]=%8.3f  a2[%ld]=%8.3f  a3[%ld]=%8.3f \n",
		    i,a1[i],i,a2[i],i,a3[i]) ;
		printf("a4[%ld]=%8.3f  a5[%ld]=%8.3f  a6[%ld]=%8.3f \n",
		    i,a4[i],i,a5[i],i,a6[i]) ;
		printf("a7[%ld]=%8.3f  a8[%ld]=%8.3f  a9[%ld]=%8.3f \n",
		    i,a7[i],i,a8[i],i,a9[i]) ;
		printf("x1[%ld]=%8.3f  x2[%ld]=%8.3f  x3[%ld]=%8.3f \n",
		    i,x1[i],i,x2[i],i,x3[i]) ;
		printf("x4[%ld]=%8.3f  x5[%ld]=%8.3f  x6[%ld]=%8.3f \n",
		    i,x4[i],i,x5[i],i,x6[i]) ;
		printf("x7[%ld]=%8.3f  x8[%ld]=%8.3f  x9[%ld]=%8.3f \n",
		    i,x7[i],i,x8[i],i,x9[i]) ;
	}
	exit (0);
}
