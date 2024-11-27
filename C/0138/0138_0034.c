#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[600],b[600],c[600],d[600];
	long int e[600],f[600],g[600],h[600],hh[600];
	long int n;
	static int i,j;
	n=600;
	for(i=0;i<2;i++)
	{
		for(j=0;j<n;j++)
		{
			a[j]=0;
			b[j]=0;
			c[j]=0;
			d[j]=0;
			e[j]=0;
			f[j]=0;
			g[j]=0;
			h[j]=0;
			hh[j]=0;
		}
	}
	printf("  *****  *****\n");
	printf(" a[1]= %ld  b[1]= %ld  c[1]= %ld \n",a[1],b[1],c[1]);
	printf(" d[1]= %ld  e[1]= %ld  f[1]= %ld \n",d[1],e[1],f[1]);
	printf(" g[1]= %ld  h[1]= %ld  \n",g[1],h[1]);
	exit (0);
}
 
