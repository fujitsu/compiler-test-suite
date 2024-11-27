#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct data{
	long int a[10];
}y;
int main()
{
	struct data x;
	int i;
	for(i=0;i<10;i++)
	{
		x.a[i] = i;
	}
	for(i=0;i<10;i++)
	{
		printf(" %ld \n",x.a[i]);
	}
	exit (0);
}
