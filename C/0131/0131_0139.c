#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10],b[10]={
		-1,-2,-3,-4,-5,-6,-7,-8,-9,-10	};
	int d[10],c[10]={
		3,3,3,3,3,3,3,3,3,3	};
	unsigned int e[10],f[10]={
		1,2,3,4,5,6,7,8,9,10	};
	unsigned int h[10],g[10]={
		7,7,7,7,7,7,7,7,7,7	};
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = b[i] / c[i] ;
		d[i] = b[i] % c[i] ;
		e[i] = f[i] / g[i] ;
		h[i] = f[i] % g[i] ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d  d[%d] => %d  e[%d] => %d  h[%d] => %d \n",
		    i,a[i],i,d[i],i,e[i],i,h[i]) ;
	}
	exit (0);
}
