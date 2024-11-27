#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 50

int main()
{
	double a[N],b[N],c[N],d[N],e[N],f[N],g[N],h[N],o[N],p[N] ;
	double sum1,sum2,sum3,sum4,sum5,sum6,sum7,sum8,sum9,sum10,
	suma,sumb,ave1,ave2 ;
	long int i ;
	sum1  = 0.0 ;
	sum2  = 0.0 ;
	sum3  = 0.0 ;
	sum4  = 0.0 ;
	sum5  = 0.0 ;
	sum6  = 0.0 ;
	sum7  = 0.0 ;
	sum8  = 0.0 ;
	sum9  = 0.0 ;
	sum10 = 0.0 ;
	for(i=0;i<N;i++)
	{
		a[i] = (double)i + 5.74 ;
		b[i] = sqrt((double)i) ;
		c[i] = 1.0 ;
		d[i] = (double)i * 3.9 ;
		e[i] = 0.2 ;
		f[i] = 107.6 ;
		g[i] = (double)i - 0.093 ;
		h[i] = (double)i * 2.0 ;
		o[i] = 3.2 ;
		p[i] = 100.0 ;
		sum1  = sum1  + a[i] ;
		sum2  = sum2  + b[i] ;
		sum3  = sum3  + c[i] ;
		sum4  = sum4  + d[i] ;
		sum5  = sum5  + e[i] ;
		sum6  = sum6  + f[i] ;
		sum7  = sum7  + g[i] ;
		sum8  = sum8  + h[i] ;
		sum9  = sum9  + o[i] ;
		sum10 = sum10 + p[i] ;
		a[i]  = b[i]  + c[i] + 9.9 ;
		d[i]  = e[i]  + f[i] ;
		g[i]  = h[i]  + o[i] ;
		p[i]  = g[i] ;
		if (a[i] > 5.0)
		{
			p[i] = a[i] - 0.01 ;
			g[i] = sqrt(b[i]) ;
		}
		else
		{
			h[i] = 0.0 ;
			o[i] = 0.0 ;
		}
	}
	suma = 0.0 ;
	sumb = 0.0 ;
	for(i=0;i<N;i++)
	{
		suma = suma + a[i] + b[i] + c[i] + d[i] + e[i] ;
		sumb = sumb + f[i] + g[i] + h[i] + o[i] + p[i] ;
	}
	ave1 = suma / 5.0 ;
	ave2 = sumb / 5.0 ;
	if (ave1 > ave2)
	{
		for(i=0;i<N;i++)
		{
			a[i] = o[i] + sqrt(p[i]) ;
			b[i] = g[i] - sqrt(h[i]) ;
			c[i] = (e[i] + f[i]) / 2.0 ;
			d[i] = a[i] - 0.0001 ;
			e[i] = b[i] ;
			f[i] = fabs(c[i]) ;
		}
	}
	else
	{
		for(i=0;i<N;i++)
		{
			g[i] = a[i] ;
			h[i] = b[i] ;
			o[i] = c[i] ;
			p[i] = d[i] ;
		}
	}
	for(i=0;i<N;i++)
	{
		printf("a[%2ld]=%8.3f  b[%2ld]=%8.3f  c[%2ld]=%8.3f  d[%2ld]=%8.3f\n",
		    i,a[i],i,b[i],i,c[i],i,d[i]) ;
		printf("e[%2ld]=%8.3f  f[%2ld]=%8.3f  g[%2ld]=%8.3f  h[%2ld]=%8.3f\n",
		    i,e[i],i,f[i],i,g[i],i,h[i]) ;
		printf("o[%2ld]=%8.3f  p[%2ld]=%8.3f\n",i,o[i],i,p[i]) ;
	}
	exit (0);
}
