#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[5];
	for(i=-3;i<=0;i++)
	{
		a[i*(-1)] = i ;
	}
	for(i=3;i>=0;i--)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
