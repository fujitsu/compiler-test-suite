#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=2,a[20];
	for(i=18;i>1;i-=n+1)
	{
		a[i] = i ;
	}
	for(i=18;i>1;i-=3)
	{
		printf(" %d \n",a[i]) ;
	}
	exit (0);
}
