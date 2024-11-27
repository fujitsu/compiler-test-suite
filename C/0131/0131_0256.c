#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10];
	for(i=0;i<10;i++)
	{
		a[i-1+1]=10;
	}
	for(i=0;i<10;i++)
	{
		printf("%d",a[i]);
	}
	printf("\n");
	exit (0);
}
