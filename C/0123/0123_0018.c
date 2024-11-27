#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	unsigned long int n=0;
	long int i,a[20];
	for(i=0;i<10;i++)
	{
		a[n] = i;
		a[n] = a[n] + 1;
		n+=2;
	}
	for(i=0;i<20;i+=2)
	{
		printf("a[%ld] => %ld\n",i,a[i]);
	}
	exit (0);
}
