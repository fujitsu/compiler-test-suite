#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[1000],b[1000],c[1000],d[1000];
	float e[1000],f[1000],g[1000],h[1000];
	float x[1000],y[1000],z[1000];
	long int i;
	for(i=0;i<1000;i++)
	{
		a[i]=i+1;
		b[i]=i+11;
	}
	for(i=0;i<1000;i++)
	{
		c[i]=a[i]+b[i];
		d[i]=a[i]*b[i];
		f[i]=a[i];
		x[i]=a[i];
		y[i]=a[i];
		z[i]=a[i];
		e[i]=a[i]/b[i]+2.0;
		g[i]=(i+1);
		h[i]=a[i]+2*(i+1);
	}
	printf("c d e f g h\n");
	for(i=0;i<1000;i++){
		printf(" %f %f %f %f %f %f \n",c[i],d[i],e[i],f[i],g[i],h[i]);
	}
	exit (0);
}
