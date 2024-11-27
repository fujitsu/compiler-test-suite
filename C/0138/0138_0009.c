#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[32],b[32];
	long int i;
	for(i=0;i<32;i++)
	{
		b[i]=32;
	}
	for(i=0;i<32;i++)
	{
		a[i]=b[i];
	}
	printf("  *****  *****\n");
	for(i=0;i<32;i++)
	{
		if((i%4)==0) printf("\n");
		printf(" a[%2ld]= %d ",i,a[i]);
	}
	printf("\n");
	exit (0);
}
