#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 20

int main()
{
	double a1[N],a2[N],a3[N],a4[N],a5[N],a6[N],a7[N],a8[N],a9[N],
	x1[N],x2[N],x3[N],x4[N],x5[N],x6[N],x7[N],x8[N],x9[N];
	long int l[N] ;
	static struct tag1
	{
		double real,imag ;
	} z1[N] ;
	static struct tag2
	{
		double real,imag ;
	} z2[N] ;
	long int i ;
	double xx ;
	for(i=0;i<N;i++)
	{
		a1[i] = 1.1 ;
		a2[i] = -0.4 ;
		a3[i] = 8.1 ;
		a4[i] = -9.5 ;
		a5[i] = 6.7 ;
		a6[i] = 9.2 ;
		a7[i] = 1.0 ;
		a8[i] = 7.3 ;
		a9[i] = 7.1 ;
		l[i]  = 9 ;
		z1[i].real = 1.0 ;
		z1[i].imag = 1.0 ;
		x6[i] = 0;
	}
	for(i=0;i<N;i++)
	{
		x1[i] = a1[i] - 0.1 ;
		x2[i] = a2[i] + 0.1 ;
		x3[i] = sqrt(fabs(a3[i])) ;
		x4[i] = sqrt(fabs(a4[i])) - 0.001 ;
		x5[i] = a5[i] / 5.2 ;
		x6[i] = a6[i] * 2.5 ;
		xx = 2.1 ;
		if (xx > x6[9])
		{
			a4[i] = x1[i] + x2[i] + x3[i] + x4[i] + x5[i] + x6[i] ;
		}
		x7[i] = a7[l[i]] * 0.3 - 9.2 ;
		x8[i] = a8[i] - 0.000001 ;
		x9[i] = a9[i] / 9.999999 ;
		z1[i].real = a9[i] ;
		z2[i].real = z1[i].real / 2.0 ;
		a1[i] = x1[i] + x2[i] ;
		a2[i] = (x1[i] + x2[i]) / 2.0 ;
		a3[i] = a4[i] - 0.1  ;
		a4[i] = x4[i] + 0.01 ;
		a5[i] = a8[i] + a9[i] ;
		a6[i] = x6[i] ;
		a7[i] = fabs(x7[i]) ;
		a8[i] = x8[i] + 0.1111 ;
		a9[i] = x9[i] - 0.00001 ;
	}
	for(i=0;i<N;i++)
	{
		printf("a1[%2ld]=%8.3f  a2[%2ld]=%8.3f  a3[%2ld]=%8.3f \n",
		    i,a1[i],i,a2[i],i,a3[i]) ;
		printf("a4[%2ld]=%8.3f  a5[%2ld]=%8.3f  a6[%2ld]=%8.3f \n",
		    i,a4[i],i,a5[i],i,a6[i]) ;
		printf("a7[%2ld]=%8.3f  a8[%2ld]=%8.3f  a9[%2ld]=%8.3f \n",
		    i,a7[i],i,a8[i],i,a9[i]) ;
		printf("x1[%2ld]=%8.3f  x2[%2ld]=%8.3f  x3[%2ld]=%8.3f \n",
		    i,x1[i],i,x2[i],i,x3[i]) ;
		printf("x4[%2ld]=%8.3f  x5[%2ld]=%8.3f  x6[%2ld]=%8.3f \n",
		    i,x4[i],i,x5[i],i,x6[i]) ;
		printf("x7[%2ld]=%8.3f  x8[%2ld]=%8.3f  x9[%2ld]=%8.3f \n",
		    i,x7[i],i,x8[i],i,x9[i]) ;
	}
	exit (0);
}
