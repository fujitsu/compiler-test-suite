#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a1[600],b1[600],c1[600],d1[600],e1[600];
	long int f1[600],g1[600],h1[600];
	float a2[600],b2[600],c2[600],d2[600],e2[600],f2[600],g2[600],h2[600];
	double a3[600],b3[600],c3[600],d3[600];
	double e3[600],f3[600],g3[600],h3[600];
	long int n=600;
	long int i1[600],j1[600];
	float i2[600],j2[600];
	double i3[600],j3[600];
	long int i;
	for(i=0;i<n;i++)
	{
		a1[i]=1;
		b1[i]=1;
		c1[i]=1;
		d1[i]=1;
		e1[i]=1;
		f1[i]=1;
		g1[i]=1;
		h1[i]=1;
		i1[i]=1;
	}
	for(i=0;i<n;i++)
	{
		a2[i]=1;
		b2[i]=1;
		c2[i]=1;
		d2[i]=1;
		e2[i]=1;
		f2[i]=1;
		g2[i]=1;
		h2[i]=1;
		i2[i]=1;
	}
	for(i=0;i<n;i++)
	{
		a3[i]=1;
		b3[i]=1;
		c3[i]=1;
		d3[i]=1;
		e3[i]=1;
		f3[i]=1;
		g3[i]=1;
		h3[i]=1;
		i3[i]=1;
	}
	for(i=0;i<n;i++)
	{
		j1[i]=a1[i]+b1[i]+c1[i]+d1[i]+e1[i]+f1[i]+g1[i]+h1[i]+i1[i]+i1[i];
		a1[i]=j1[i]+i1[i];
	}
	for(i=0;i<n;i++)
	{
		j2[i]=a1[i]+b1[i]+c1[i]+d1[i]+e1[i]+f1[i]+g1[i]+h1[i]+i1[i]+i2[i];
		a1[i]=j2[i]+i2[i];
	}
	for(i=0;i<n;i++)
	{
		j3[i]=a3[i]+b3[i]+c3[i]+d3[i]+e3[i]+f3[i]+g3[i]+h3[i]+i3[i]+i3[i];
		a3[i]=j3[i]+i3[i];
	}
	printf("  *****  *****\n");
	for(i=0;i<600;i++)
	{
		printf(" a1[%3ld]=%ld ji[%3ld]=%ld",i,a1[i],i,j1[i])               ;
		printf(" a2[%3ld]=%g j2[%3ld]=%g",i,a2[i],i,j2[i])                 ;
		printf(" a3[%3ld]=%g j3[%3ld]=%g \n",i,a3[i],i,j3[i])              ;
	}
	exit (0);
}
