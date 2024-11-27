#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j=10,a[10];
	printf("<<<<<<  >>>>>> \n");
	for(i=10;i>0;i--)
	{
		a[--j]=i;
	}
	for(i=0;i<10;i+=2)
	{
		printf("%d \n",a[i]);
	}
	exit (0);
}
