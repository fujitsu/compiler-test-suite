#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	double a[50],b[50],c[50],d[50],e[50],f[50],g[50],
	h[50],o[50],p[50] ;
	static unsigned long int l[50],m=0 ;
	long int ni[5]={
				10,20,30,40,50		},
	iii,ii,jj,i,j,k,n ;
	double suma,sumb,ave1,ave2 ;
	for(i=0;i<50;i++)
	{
	  l[i] = 0 ;
  	  a[i] =  1.0 ;
	  b[i] =  2.0 ;
	  c[i] =  1.0 ;
	  d[i] =  3.0 ;
	  e[i] =  0.2 ;
	  f[i] = -17.6 ;
	  g[i] =  9.04 ;
	  h[i] =  5.902 ;
	  o[i] =  3.2 ;
	  p[i] =  100.0 ;
	}
	for(iii=0;iii<5;iii++)
	{
		n = ni[iii] ;
		for(i=0;i<n;i++)
		{
			a[i] =  1.0 ;
			b[i] =  2.0 ;
			c[i] =  1.0 ;
			d[i] =  3.0 ;
			e[i] =  0.2 ;
			f[i] = -17.6 ;
			g[i] =  9.04 ;
			h[i] =  5.902 ;
			o[i] =  3.2 ;
			p[i] =  100.0 ;
			jj   = 1 ;
			for(ii=0;ii<n;ii++)
			{
				if (m == 1)
				{
					if (l[ii] == 1)
					{
						e[jj] =  b[ii] ;
						a[ii] = (b[ii] + c[ii]) / 2.0 ;
						jj = jj + 1 ;
					}
				}
				f[ii] = 1 ;
				o[0]  = f[ii] ;
			}
			h[i] = a[i] + c[i] + 9.9 ;
			d[i] = e[i] + f[i] ;
			g[i] = h[i] + o[i] ;
			p[i] = g[i] - 31.9 ;
			for(j=0;j<n;j++)
			{
				if (p[j] > 40.0) goto lbl_7 ;
			}
			for(k=0;k<n;k++)
			{
				c[k] = (o[k] + p[k]) / 2.0 ;
			}
lbl_7:
			if (a[i] > 5.0)
			{
				p[i] = e[i] - 0.01 ;
				g[i] = sqrt(b[i]) ;
			}
			else
			{
				h[i] = g[i] ;
				o[i] = f[i] ;
			}
		}
		suma = 0.0 ;
		sumb = 0.0 ;
		for(i=0;i<n;i++)
		{
			suma = suma + a[i] + b[i] + c[i] + d[i] + e[i] ;
			sumb = sumb + f[i] + g[i] + h[i] + o[i] + p[i] ;
		}
		ave1 = suma / 5.0 ;
		ave2 = sumb / 5.0 ;
		if (ave1 > ave2)
		{
			for(i=0;i<n;i++)
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
			for(i=0;i<n;i++)
			{
				g[i] = a[i] ;
				h[i] = b[i] ;
				o[i] = c[i] ;
				p[i] = d[i] ;
			}
		}
		for(i=0;i<n;i++)
		{
			printf("a[%2ld]=%8.3f  b[%2ld]=%8.3f  c[%2ld]=%8.3f  d[%2ld]=%8.3f\n",
			    i,a[i],i,b[i],i,c[i],i,d[i]) ;
			printf("e[%2ld]=%8.3f  f[%2ld]=%8.3f  g[%2ld]=%8.3f  h[%2ld]=%8.3f\n",
			    i,e[i],i,f[i],i,g[i],i,h[i]) ;
			printf("o[%2ld]=%8.3f  p[%2ld]=%8.3f\n",i,o[i],i,p[i]) ;
		}
	}
	for(i=0;i<10;i++)
	{
		a[i] = 1.0  ;
		b[i] = 1.9  ;
		c[i] = 8.45 ;
	}
	exit (0);
}
