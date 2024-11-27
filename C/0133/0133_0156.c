#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 10

int main()
{
	double a0[N],a1[N],a2[N],a3[N],a4[N],a5[N],
	a6[N],a7[N],a8[N],a9[N],x ;
	long int i,j ;
	for(i=0;i<N;i++)
	{
		a0[i] = i ;
		a1[i] = i + 0.1 ;
		a2[i] = sqrt((double)i) ;
		a3[i] = i * 2.0 ;
		a4[i] = (double)i - 0.01 ;
		a5[i] = i * 0.3 ;
		a6[i] = i + 0.9 ;
		a7[i] = 1.0 ;
		a8[i] = 9.9 ;
		a9[i] = i * 0.4 + 0.3 ;
		x = 1.0 ;
		for(j=0;j<N;j++)
		{
			if (x > 10.0) a0[j] = 0.0 ;
		}
		a9[i] = (a1[i] + a2[i]) / 2.0 ;
		a8[i] = a0[i] ;
		a7[i] = a3[i] + a4[i] + a5[i] ;
		a6[i] = a3[i] - 0.01 ;
		a5[i] = a6[i] ;
		a4[i] = a7[i] + a8[i] ;
		a3[i] = (a9[i] + a0[i] + a1[i]) / 3.0 ;
		a2[i] = a2[i] * 2.5 ;
		a1[i] = a9[i] / 2.34 ;
		a0[i] = a8[i] * 0.5 ;
		a0[i] = a7[i] - a0[i] ;
	}
	for(i=0;i<N;i++)
	{
		printf("a0[%2ld]=%8.3f a1[%2ld]=%8.3f a2[%2ld]=%8.3f a3[%2ld]=%8.3f \n",
		    i,a0[i],i,a1[i],i,a2[i],i,a3[i]) ;
		printf("a4[%2ld]=%8.3f a5[%2ld]=%8.3f a6[%2ld]=%8.3f a7[%2ld]=%8.3f \n",
		    i,a4[i],i,a5[i],i,a6[i],i,a7[i]) ;
		printf("a8[%2ld]=%8.3f a9[%2ld]=%8.3f \n",i,a8[i],i,a9[i]) ;
	}
	exit (0);
}
