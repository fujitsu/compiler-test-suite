#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	static unsigned long int i1[10],i3[10],i2;
	long int i,n=10;
	i2=1;
	for(i=0;i<5;i++)
	{
		i3[i]=1;
	}
	for(i=5;i<10;i++)
	{
		i3[i]=0;
	}
	printf("\n");
	for(i=0;i<n;i++)
	{
		i1[i]=i2&&i3[i];
	}
	printf("*****  ***** \n");
	for(i=0;i<10;i++)
	{
		printf(" i1[%ld]= %ld ",i,i1[i]);
		printf(" i3[%ld]= %ld \n",i,i3[i]);
	}
	printf(" i2= %ld\n",i2);
	exit (0);
}
 
