#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j;
	int a[10];
	for(i=0,j=10;i!=j;i++)
	{
		a[i]=i;
	}
	for(i=0;i<=9;i++)
	{
		printf("*** i = %d ***\n",a[i]);
	}
	exit (0);
}
