#include <stdlib.h>
#include <math.h>
#include <stdio.h>

#include "000.h"

int main()
{

	long int a[10],b[10],c[10],d[10],e[10],f[10],g[10],h[10];
	long int i;
	for(i=0;i<10;i++){
		h[i]=0;
	}
	for(i=0;i<10;i++)
	{
		a[i]=0;
	}
	for(i=0;i<10;i++)
	{
		b[i]=a[i];
		c[i]=b[i]+100;
	}
	for(i=0;i<10;i++)
	{
		b[i]=c[i];
		c[i]=a[i];
		d[i]=c[i];
		e[i]=a[i];
		a[i]=b[i]+c[i]+d[i];
		f[i]=a[i]+e[i]+h[i];
		g[i]=f[i];
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++){
		printf(" %d ",g[i]);
	}
	printf("\n");
	exit (0);
}
 
