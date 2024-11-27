#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10];
	for(i=0;i<=5;i++)
	{
		a[i+1*2] = i ;
	}
	for(i=2;i<=7;i++)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
