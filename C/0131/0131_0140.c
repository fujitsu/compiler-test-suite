#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	unsigned            char a[10] ;
	char b[10] ;
	unsigned      short int  c[10] ;
	short int  d[10] ;
	unsigned      long  int  e[10] ;
	long  int  f[10] ;
	unsigned      long  int  g[10] ;
	long  int  h[10] ;
	float                    k[10] ;
	double                   l[10] ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = i - 1 ;
		b[i] = i + 1 ;
		c[i] = i - 2 ;
		d[i] = i + 2 ;
		e[i] = i - 4 ;
		f[i] = i + 4 ;
		g[i] = i - 8 ;
		h[i] = i + 8 ;
		k[i] = i + 4 ;
		l[i] = i + 8 ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d]=>%x  b[%d]=>%x  c[%d]=>%d  d[%d]=>%d  e[%d]=>%d  ",
		    i,a[i],i,b[i],i,c[i],i,d[i],i,e[i]) ;
		printf("f[%d]=>%d  g[%d]=>%d  h[%d]=>%d  k[%d]=>%f  l[%d]=>%f  ",
		    i,f[i],i,g[i],i,h[i],i,k[i],i,l[i]) ;
		printf("\n") ;
	}
	exit (0);
}
