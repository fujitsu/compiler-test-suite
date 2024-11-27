#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[6];
	printf("<<<<<<  >>>>>> \n");
	for(i=5;i>0;i-=1)
	{
		a[i]=i;
	}
	for(i=5;i>0;i-=1)
	{
		printf("a[%d]=%d \n",i,a[i]);
	}
	exit (0);
}
