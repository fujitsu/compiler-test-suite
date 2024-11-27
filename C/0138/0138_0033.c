#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[10],b[10],c[10],d[10],e[10];
	long int f[10],g[10],h[10],i[10];
	long int n;
	static int j,k;
	for(j=0;j<10;j++)
	{
		a[j]=10;
		c[j]=100;
	}
	n=10;
	for(j=0;j<n;j++)
	{
		b[j]=a[j];
		c[j]=a[j]+(b[j]+c[j]);
		d[j]=a[j]+1+b[j]+c[j];
		e[j]=(a[j]+b[j])+c[j]-1;
		f[j]=a[j]+b[j]+(c[j]+1);
		g[j]=a[j]+(b[j]+(c[j]*1));
		h[j]=a[j]+b[j]+(c[j]*c[j]);
		i[j]=a[j]-b[j]-c[j]-(d[j]-e[j]-f[j])-(g[j]-h[j]);
	}
	printf("  *****  *****\n");
	printf(" a[1]= %ld  b[1]= %ld  c[1]= %ld \n",a[1],b[1],c[1]);
	printf(" d[1]= %ld  e[1]= %ld  f[1]= %ld \n",d[1],e[1],f[1]);
	printf(" g[1]= %ld  h[1]= %ld  i[1]= %ld \n",g[1],h[1],i[1]);
	exit (0);
}
 
