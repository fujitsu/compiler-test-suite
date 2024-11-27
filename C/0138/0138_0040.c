#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10],b[10],c[10];
	long int i;
	for(i=0;i<10;i++)
	{
		c[i]=i+1;
	}
	for(i=0;i<10;i++)
	{
		a[i]=1;
	}
	printf(" *****  *(1)*\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]= %ld ",i,a[i]);
		if((((i+1)%5) == 0) && (i != 0)) printf("\n");
	}
	for(i=0;i<10;i+=2)
	{
		a[i]=2;
	}
	printf(" *****  *(2)*\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]= %ld ",i,a[i]);
		if((((i+1)%5) == 0) && (i != 0)) printf("\n");
	}
	for(i=0;i<10;i++)
	{
		b[i]=a[i]+1;
	}
	printf(" *****  *(3)*\n");
	for(i=0;i<10;i++)
	{
		printf(" b[%ld]= %ld ",i,b[i]);
		if((((i+1)%5) == 0) && (i != 0)) printf("\n");
	}
	for(i=0;i<10;i++)
	{
		b[i]=a[c[i]-1];
	}
	printf(" *****  *(3)*\n");
	for(i=0;i<10;i++)
	{
		printf(" b[%ld]= %ld ",i,b[i]);
		if((((i+1)%5) == 0) && (i != 0)) printf("\n");
	}
	exit (0);
}
 
