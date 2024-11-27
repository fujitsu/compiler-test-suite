#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10];
	long int i;
	for(i=0;i<10;i++)
	{
		a[i]=10;
	}
	for(i=0;i<10;i+=2)
	{
		a[i]=0;
	}
	for(i=0;i<8;i++)
	{
		a[i]=1+1;
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++)
	{
		if((i%4)==0) printf("\n");
		printf(" a[%ld]=%d ",i,a[i]);
	}
	printf("\n");
	exit (0);
}
