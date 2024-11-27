#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=-5,a[10];
	printf("<<<<<<  >>>>>> \n");
	for(i=n+5;i<n+15;i++)
	{
		a[i+5-5]=10;
	}
	for(i=0;i<10;i++)
	{
		printf("%d \n",a[i+2-2]);
	}
	exit (0);
}
