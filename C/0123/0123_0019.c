#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	unsigned long int b[10],n;
	long int i,a[11]={
		1,2,3,4,5,6,7,8,9,10,11	},
	c[10];
	for(i=0;i<10;i++)
	{
		b[i] = i;
		n    = b[i] + 1;
		c[i] = a[n];
	}
	for(i=0;i<10;i++)
	{
		printf("c[%ld] => %ld\n",i,c[i]);
	}
	exit (0);
}
