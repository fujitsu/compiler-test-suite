#include <stdlib.h>
#include <math.h>
#include <stdio.h>

float a[10],b[10],c[10],d[10],e[10],f[10],g[10],h[10];
int main()
{

	float a[10],b[10],c[10],d[10],e[10],f[10],g[10],h[10];
	static int i,j;
	for(i=0;i<10;i++)
	{
		a[i]=1.0;
	}
	for(j=0;j<10;j++)
	{
		b[j]=a[j]+1;
		c[j]=a[j]+b[j]+1.;
		d[j]=a[j]+b[j]+c[j]/1;
		e[j]=a[j]+b[j]+c[j]-1;
		f[j]=a[j]+b[j]+c[j]+1;
		g[j]=a[j]+b[j]+c[j]*1;
		h[j]=a[j]+b[j]+c[j];
	}
	printf("  *****  *****\n");
	printf(" a[1]= %f  b[1]= %f  c[1]= %f ",a[1],b[1],c[1]);
	printf(" d[1]= %f  e[1]= %f  f[1]= %f ",d[1],e[1],f[1]);
	printf(" g[1]= %f  h[1]= %f \n",g[1],h[1]);
	exit (0);
}
 
