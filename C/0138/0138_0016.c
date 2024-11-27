#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10],b[10],c[10];
	float d[10];
	long int D;
	long int i;
	for(i=0;i<10;i++)
	{
		a[i]=1;
	}
	for(i=0;i<10;i++)
	{
		b[i]=2;
	}
	d[1]=5;
	d[2]=9;
	for(i=0;i<10;i++)
	{
		c[i]=a[b[i]];
		d[a[i]]=c[i];
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%2ld]=%ld  b[%2ld]=%ld",i,a[i],i,b[i]);
		printf(" c[%2ld]=%ld  d[1]=%g  d[2]=%g \n",i,c[i],d[1],d[2]);
	}
	exit (0);
}
