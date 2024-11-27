#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[20],b[20],c[10];
	long int m=3;
	long int n1=10;
	long int n2=20;
	long int i;
	for(i=0;i<n2;i++)
	{
		a[i]=i;
		b[i]=(i+1)*(i+1);
	}
	for(i=0;i<n1;i++)
	{
		c[i]=a[i];
	}
	for(i=0;i<n1;i++)
	{
		a[i+m]=b[i];
	}
	for(i=0;i<20;i++)
	{
		printf("a[%ld]=%ld,b[%ld]=%ld\n",i,a[i],i,b[i]);
	}
	for(i=0;i<10;i++)
	{
		printf("c[%ld]=%ld\n",i,c[i]);
	}
	exit (0);
}
