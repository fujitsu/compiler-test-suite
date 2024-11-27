#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10],b[10],c[10],d[10],e[10],f[10],g[10],h[10],i[10];
	static int j;
	for(j=0;j<10;j++)
	{
		a[j]=0;
	}
	for(j=0;j<9;j++)
	{
		a[j]=a[9];
		b[j]=0;
		c[j]=0;
		d[j]=0;
		e[j]=0;
		f[j]=0;
		g[j]=0;
		h[j]=0;
		i[j]=0;
	}
	printf("  *****  *(1)*\n");
	printf(" a[1]=%ld b[1]=%ld c[1]=%ld d[1]=%ld",a[1],b[1],c[1],d[1]);
	printf(" e[1]=%ld f[1]=%ld g[1]=%ld h[1]=%ld",e[1],f[1],g[1],h[1]);
	printf(" i[1]=%ld \n",i[1]);
	for(j=0;j<9;j++)
	{
		a[j]=a[j];
		b[j]=a[j];
		c[j]=a[j];
		d[j]=a[j];
		e[j]=b[j]+c[j]+d[j];
		f[j]=a[j]+e[j]+h[j];
		g[j]=f[j];
		h[j]=f[j];
	}
	printf("  *****  *(2)*\n");
	printf(" a[1]=%ld b[1]=%ld c[1]=%ld d[1]=%ld",a[1],b[1],c[1],d[1]);
	printf(" \n");
	printf(" e[1]=%ld f[1]=%ld g[1]=%ld h[1]=%ld",e[1],f[1],g[1],h[1]);
	printf(" \n");
	exit (0);
}
