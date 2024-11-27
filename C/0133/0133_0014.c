#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10],b[10];
	long int i;
	for(i =0;i < 10;i ++)
	{
		a[i]=i;
	}
	for(i =0;i < 10;i ++)
	{
		b[i]=10-i;
	}
	for(i =0;i < 10;i ++)
	{
		printf("a[%ld] => %ld  b[%ld] => %ld\n",i,a[i],i,b[i]);
	}
	exit (0);
}
