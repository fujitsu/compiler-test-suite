#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float c[10],d[10],e[10],f[10],g[10],h[10] ;
	float x[10],y[10],z[10];
	long int i ;
	float a[10]={
						1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0			};
	float b[10]={
						11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0			};
	for(i=0;i<10;i++)
	{
		c[i] = a[i] + b[i] ;
		d[i] = a[i] * b[i] ;
		f[i] = a[i] ;
		x[i] = a[i] ;
		y[i] = a[i] ;
		z[i] = a[i] ;
		e[i] = a[i] / b[i] + 2.0 ;
		g[i] = i ;
		h[i] = a[i] + 2 * i ;
	}
	printf(" ***  ***\n") ;
	for(i=0;i<10;i++)
	{
		printf("c[%ld] => %10.2f \n",i,c[i]) ;
		printf("d[%ld] => %10.2f \n",i,d[i]) ;
		printf("e[%ld] => %10.2f \n",i,e[i]) ;
		printf("f[%ld] => %10.2f \n",i,f[i]) ;
		printf("g[%ld] => %10.2f \n",i,g[i]) ;
		printf("h[%ld] => %10.2f \n",i,h[i]) ;
	}
	exit (0);
}
