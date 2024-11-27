#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[12];
	for(i=1;i<=10;i++)
	{
		a[i-(-1)] = i ;
	}
	for(i=2;i<=11;i++)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
