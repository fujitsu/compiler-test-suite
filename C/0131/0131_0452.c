#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10];
	for(i=2*4-3*2;i<9;i++)
	{
		a[i] = i ;
	}
	for(i=2;i<9;i++)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
