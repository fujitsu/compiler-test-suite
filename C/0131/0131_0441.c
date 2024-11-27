#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=2,a[21];
	for(i=20;i>0;i-=n*2)
	{
		a[i] = i ;
	}
	for(i=20;i>0;i-=4)
	{
		printf(" %d \n",a[i]) ;
	}
	exit (0);
}
