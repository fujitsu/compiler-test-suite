#include <stdlib.h>
#include <math.h>
#include <stdio.h>

long int a[10],b[10],c[10];
int main()
{
	long int i;
	for(i=0;i< 10;i++)
	{
		b[i]=5;
		c[i]=a[i]+b[i];
	}
	for(i=0;i< 10;i++)
	{
		printf("a[%ld] => %ld  b[%ld] => %ld  c[%ld] => %ld\n",i,a[i],
		    i,b[i],i,c[i]);
	}
	exit (0);
}
