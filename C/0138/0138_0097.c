#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	double a[10];
	double b=0.0;
	long int n=10,i;
	for(i=0;i<10;i++)
	{
		a[i]=1.0;
	}
	printf("*****  *****\n");
	for(i=0;i<n;i++)
	{
		b=b+a[i];
	}
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]= %f \n",i,a[i]);
	}
	printf(" b= %f\n",b);
	exit (0);
}
 
