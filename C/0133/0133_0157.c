#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 10

int main()
{
	double x1[N],x2[N],x3[N],x4[N],x5[N],x6[N],x7[N],x8[N],x9[N] ;
	long int a[N]={
				1,1,1,1,1,1,1,1,1,1		},
	b[N],c[N],i,j,jj ;
	struct tag1
	{
		double real,imag ;
	} z1[N] ;
	struct tag2
	{
		double real,imag ;
	} z2[N] ;
	unsigned long int l[N]={
				0,0,0,0,0,0,0,0,0,0		},
	m=0 ;
	for(i=0;i<N;i++)
	{
		z1[i].real = 5.8 ;
		z1[i].imag = 7.0 ;
	}
	for(j=0;j<N;j++)
	{
		x1[j] = j ;
		x2[j] = j + 1.09 ;
		x3[j] = sqrt((double)j) ;
		x4[j] = x3[j] - 0.01 ;
		x5[j] = (x1[j] + x2[j]) / 4.9 ;
		x6[j] = 2.865 ;
		x7[j] = -x1[j] + 8.9 ;
		jj = 0 ;
		for(i=0;i<N;i++)
		{
			if (m != 1)
			{
				if (l[i] != 1)
				{
					c[jj] = b[i] ;
					z2[jj].real = fabs(z1[i].real) ;
					z2[jj].imag = fabs(z1[i].imag) ;
					jj = jj + 1 ;
				}
			}
			b[i] = 1 ;
			a[0] = b[i] ;
		}
		z2[j].real = (double)x3[j] ;
		x8[j] = x1[j] * 3.0 ;
		x9[j] = x2[j] * 5.6 - 0.1 ;
		x1[j] = x4[j] + x5[j] ;
		x2[j] = sqrt(x6[j]) ;
		x3[j] = x9[j] - x2[j] ;
		x4[j] = x8[j] + 9.97 ;
		x5[j] = x9[j] - 0.3 ;
		x6[j] = sqrt(fabs(x1[j])) * 2.5 ;
		x7[j] =(x1[j] + x2[j]) / 4.7 ;
		if (a[j] >= b[j])
		{
			x8[j] = x1[j] + x2[j] + x3[j] ;
		}
		else
		{
			x9[j] = x4[j] + x5[j] + x6[j] + sqrt(fabs(x7[j])) ;
		}
	}
	for(i=0;i<N;i++)
	{
		printf("x1[%ld]=%8.3f x2[%ld]=%8.3f x3[%ld]=%8.3f x4[%ld]=%8.3f \n",
		    i,x1[i],i,x2[i],i,x3[i],i,x4[i]) ;
		printf("x5[%ld]=%8.3f x6[%ld]=%8.3f x7[%ld]=%8.3f x8[%ld]=%8.3f \n",
		    i,x5[i],i,x6[i],i,x7[i],i,x8[i]) ;
		printf("x9[%ld]=%8.3f z2[%ld].real=%8.3f z2[%ld].imag=%8.3f \n",
		    i,x9[i],i,z2[i].real,i,z2[i].imag) ;
		printf("a[%ld]=%5ld b[%ld]=%5ld c[%ld]=%5ld \n",
		    i,a[i],i,b[i],i,c[i]) ;
	}
	exit (0);
}
