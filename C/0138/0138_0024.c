#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10],b[10],c[10],d[10],e[10],f[10],g[10],h[10];
	static int i;
	for(i=0;i<10;i++)
	{
		b[i]=0;
	}
	for(i=0;i<10;i++)
	{
		a[i]=b[i]+1;
		c[i]=a[i]*10;
		a[i]=c[i];
	}
	printf("  *****  *1***\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%d]= %d c[%d]= %d \n",i,a[i],i,c[i]);
	}
	for(i=0;i<10;i++)
	{
		a[i]=c[i];
		d[i]=a[i];
		e[i]=c[i];
		f[i]=a[i];
		g[i]=c[i]+a[i];
		h[i]=d[i]+e[i]+f[i]+g[i];
	}
	printf("  *****  *2***\n");
	for(i=0;i<10;i++)
	{
		printf(" h[%d]= %d \n",i,h[i]);
	}
	for(i=0;i<10;i++)
	{
		a[i]=g[i];
		b[i]=c[i];
		e[i]=d[i];
	}
	printf("  *****  *3***\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]= %ld b[%ld]= %ld",i,a[i],i,b[i]);
		printf(" e[%ld]= %ld g[%ld]= %ld",i,e[i],i,g[i]);
		printf(" c[%ld]= %ld d[%ld]= %ld \n",i,c[i],i,d[i]);
	}
	exit (0);
}
 
