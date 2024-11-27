#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=1,a[10];
	for(i*=2;i<=12;i*=2)
	{
		a[i*=1]=i;
	}
	for(i=2;i<=12;i*=2)
	{
		printf("%d \n",a[i]);
	}
	exit (0);
}
