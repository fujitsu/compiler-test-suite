#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 20

int main()
{
	double a1[N],a2[N],a3[N],a4[N],a5[N],a6[N],a7[N],a8[N],a9[N],
	x1[N],x2[N],x3[N],x4[N],x5[N],x6[N],x7[N],x8[N],x9[N];
	long int l[N];
	static struct tag1
	{
		double real,imag ;
	} z1[N] ;
	static struct tag2
	{
		double real,imag ;
	} z2[N] ;
	long int i ;
	for(i=0;i<N;i++)
	{
		a1[i] = 1.0 ;
		a2[i] = 9.9 ;
		a3[i] = -6.3 ;
		a4[i] = 5.3 ;
		a5[i] = -4.2 ;
		a6[i] = 6.9 ;
		a7[i] = 5.1 ;
		a8[i] = 1.9 ;
		a9[i] = -3.8 ;
		l[i]  = 1 ;
		z1[i].real = -1.21 ;
		z1[i].imag = 1.0 ;
	}
	for(i=0;i<N;i++)
	{
		x1[i] = a1[i] / 2.0 ;
		x2[i] = a2[i] * 2.0 ;
		x3[i] = sqrt(fabs(a3[i])) ;
		x4[i] = sqrt(fabs(a4[i])) - 0.000001 ;
		x5[i] = a5[i] + 1.2 ;
		x6[i] = a6[i] - 0.12 ;
		x7[i] = a7[i] / 1.1 ;
		x8[i] = a8[i] * 3.2 ;
		x9[i] = a9[i] ;
		z2[i].real = fabs(z1[i].real) ;
		a1[i] = 1.0 ;
		a2[i] = x2[i] - x1[i] ;
		a3[i] = x3[i] / 9.9999 ;
		a4[l[i]] = x4[i] + 9.123 ;
		a5[l[i]] = x5[i] + 1.111 ;
		a6[i] = sqrt(fabs(x6[i])) ;
		a7[i] = x7[i] / 3.11 ;
		a8[i] = x8[i] + x9[i] ;
		a9[i] = (x8[i] + x9[i]) / 2.0 ;
		z1[i].real = z2[i].real / 2.0 ;
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
		printf("z1[%2ld].real = %8.3f  z2[%2ld].real = %8.3f \n",
		    i,z1[i].real,i,z2[i].real) ;
	}
	exit (0);
}
