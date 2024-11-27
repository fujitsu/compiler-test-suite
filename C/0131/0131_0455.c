#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[11];
	for(i=1;i<=5;i++)
	{
		a[i*2] = i ;
	}
	for(i=2;i<=10;i+=2)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
