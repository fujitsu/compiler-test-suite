#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	double a[10],b[10],c[10];
	long int n=10;
	long int i,j=2;
	for(i=0;i<10;i++)
	{
		a[i]=0.0;
	}
	for(i=0;i<10;i++)
	{
		b[i]=1.0;
	}
	for(i=0;i<10;i++)
	{
		c[i]=1.0;
	}
	printf("\n");
	for(i=0;i<n;i+=j)
	{
		a[i]=b[i]+c[i];
	}
	printf("*****  ***** \n");
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]= %f ",i,a[i]);
		printf(" b[%ld]= %f ",i,b[i]);
		printf(" c[%ld]= %f \n",i,c[i]);
	}
	exit (0);
}
 
