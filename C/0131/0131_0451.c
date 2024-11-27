#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[20];
	for(i=2*3+4*2;i>5;i--)
	{
		a[i] = i ;
	}
	for(i=14;i>5;i--)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
