#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=5,n=2,a[11];
	for(i*=n;i>=0;i--)
	{
		a[i] = i ;
	}
	for(i=10;i>=0;i--)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
