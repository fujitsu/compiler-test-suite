#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[10],b[10],c[10],d[10],aa[10];
	long int e[10],f[10],g[10],h[10];
	static int i,j;
	for(i=0;i<10;i++)
	{
		c[i]=10;
	}
	for(i=0;i<10;i++)
	{
		d[i]=10;
	}
	for(i=0;i<10;i++)
	{
		e[i]=10;
	}
	for(i=0;i<10;i++)
	{
		f[i]=10;
	}
	for(i=0;i<10;i++)
	{
		g[i]=10;
	}
	for(i=0;i<10;i++)
	{
		h[i]=10;
	}
	for(j=0;j<10;j++)
	{
		a[j]=10;
	}
	printf("  *****  *(1)*\n");
	printf(" a[1]= %ld \n",a[1]);
	for(j=0;j<10;j++)
	{
		a[j]=0;
		b[j]=a[j];
	}
	printf("  *****  *(2)*\n");
	printf(" a[1]= %ld  b[1]= %ld \n",a[1],b[1]);
	for(j=0;j<10;j++)
	{
		a[j]=b[j]+c[j]+d[j]+e[j]+f[j]+g[j]+h[j];
		aa[j]=a[j];
	}
	printf("  *****  *(3)*\n");
	for(i=0;i<10;i++)
	{
		printf(" aa[%d]= %ld ",i,aa[i]);
		if(((i%5) == 0) && (i != 0))printf("\n");
	}
	printf("\n");
	exit (0);
}
 
