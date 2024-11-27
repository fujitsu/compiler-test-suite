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
	for(i=0;i<10;i++)
	{
		a[i]=1+a[i];
		a[i]=2+a[i];
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]=> %d \n",i,a[i]);
	}
	exit (0);
}
