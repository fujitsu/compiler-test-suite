#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	double a[10];
	long int i,n=10;
	for(i=0;i<n;i++)
	{
		a[i]=1.0;
	}
	printf("*****  ***** \n");
	for(i=0;i<10;i++)
	{
		printf("a[%ld]= %f \n",i,a[i]);
	}
	exit (0);
}
 
