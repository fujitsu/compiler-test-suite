#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10],b[10],c[10];
	float d[10];
	static int i;
	for(i=0;i< 10;i++)
	{
		a[i]=1.;
	}
	for(i=0;i< 10;i++)
	{
		b[i]=2.;
	}
	for(i=0;i<10;i++)
	{
		c[i]=a[i]+b[i];
		a[i]=c[i]-b[i];
		d[i]=c[i]*b[i];
		a[i]=d[i]/b[i];
		d[i]=a[i]+b[i]-c[i]*a[i]/b[i];
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%d]= %f b[%d]= %f",i,a[i],i,b[i]);
		printf(" c[%d]= %f d[%d]= %f \n",i,c[i],i,d[i]);
	}
	exit (0);
}
