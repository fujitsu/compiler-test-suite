#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10];
	long int i;
	for(i =0;i < 10;i ++)
	{
		a[i]=i;
	}
	for(i =0;i < 10;i ++)
	{
		printf("a[%ld] => %ld\n",i,a[i]);
	}
	for(i =0;i < 10;i ++)
	{
		a[i]=i;
	}
	for(i =0;i < 10;i ++)
	{
		printf("a[%ld] => %ld\n",i,a[i]);
	}
	exit (0);
}
