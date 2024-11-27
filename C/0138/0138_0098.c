#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	double a[10],b[10],c[10];
	long int k=0;
	long int j,i;
	for(i=0;i<10;i++)
	{
		b[i]=1.0;
		c[i]=1.0;
	}
	printf("*****  ***** \n");
	j=k;
	for(i=j;i<j+10;i++)
	{
		a[i]=b[i]+c[i];
	}
	printf(" j= %ld \n",j);
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]= %f ",i,a[i]);
		printf(" b[%ld]= %f ",i,b[i]);
		printf(" c[%ld]= %f \n",i,c[i]);
	}
	exit (0);
}
 
