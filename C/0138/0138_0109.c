#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[10],b[10],c[10];
	long int k=1;
	long int n=10;
	long int i;
	for(i=0;i<10;i++)
	{
		b[i]=1;
	}
	for(i=0;i<10;i++)
	{
		c[i]=1;
	}
	printf("*****  *****\n");
	k=1;
	for(i=0;i<n;i+=k)
	{
		a[i]=b[i]+c[i];
	}
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]= %ld ",i,a[i]);
		printf(" b[%ld]= %ld ",i,b[i]);
		printf(" c[%ld]= %ld \n",i,c[i]);
	}
	printf(" k= %ld \n",k);
	exit (0);
}
 
