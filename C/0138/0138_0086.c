#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	static unsigned long int a[1000],b[1000],c[1000],d[1000];
	static unsigned long int e[1000],f[1000],g[1000],h[1000];
	static unsigned long int i[1000],j[1000],k[1000],l[1000];
	long int ff=500,i1;
	for(i1=0;i1<1000;i1++)
	{
		a[i1]=0;
		b[i1]=0;
		c[i1]=0;
		d[i1]=0;
		e[i1]=0;
		f[i1]=0;
		g[i1]=0;
		h[i1]=0;
		i[i1]=0;
		j[i1]=0;
		k[i1]=0;
		l[i1]=0;
	}
	for(i1=0;i1<1000;i1++)
	{
		b[i1]=!(a[i1]||(b[i1]||c[i1]))||(d[i1]||!e[i1])
		    ||(!l[i1]&&h[i1])||f[i1]||g[i1]||h[i1];
		if (i1 > 500)
		{
			a[i1]=!a[i1];
			b[i1]=a[i1]||b[i1];
			c[i1]=(a[i1]||b[i1]&&c[i1])||l[i1];
			d[i1]=a[i1]&&b[i1]||!c[i1]&&d[i1]&&!h[i1];
			e[i1]=a[i1]||b[i1]&&c[i1]||d[i1]&&e[i1];
			f[i1]=a[i1]||b[i1]&&c[i1]||d[i1]||e[i1]||f[i1];
			g[i1]=a[i1]||b[i1]||c[i1]||d[i1]||e[i1]||f[i1]||g[i1];
			h[i1]=!(a[i1]||(b[i1]||c[i1]))||(d[i1]||!e[i1])
			    ||!l[i1]&&f[i1];
		}
		k[i1]=!(a[i1]||(b[i1]||c[i1]))||(d[i1]||!e[i1])
		    ||!l[i1]&&h[i1];
		if (ff == 500)
		{
			f[i1]=!(a[i1]||(b[i1]||c[i1]))||(d[i1]||!e[i1])
			    ||(!l[i1]&&h[i1])||f[i1]||g[i1]||h[i1];
		}
	}
	printf("  ***  **  \n");
	printf(" a[1]= %ld  b[1]= %ld \n",a[1],b[1]);
	printf(" c[1]= %ld  d[1]= %ld \n",c[1],d[1]);
	printf(" e[1]= %ld  f[1]= %ld \n",e[1],f[1]);
	printf(" g[1]= %ld  h[1]= %ld \n",g[1],h[1]);
	printf(" i[1]= %ld  j[1]= %ld \n",i[1],j[1]);
	printf(" k[1]= %ld  \n",k[1]);
	exit (0);
}
 
