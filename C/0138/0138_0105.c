#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	double a[10];
	double b=0.0,c;
	long int i;
	for(i=0;i<10;i++)
	{
		a[i]=1.0;
	}
	printf("*****  ***** \n");
	for(i=0;i<10;i++)
	{
		b=b+a[i];
		c=b;
	}
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]= %f \n",i,a[i]);
	}
	printf(" b= %f \n",b);
	printf(" c= %f \n",c);
	exit (0);
}
 
