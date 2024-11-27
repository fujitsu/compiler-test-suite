#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	static int a[10],i,n=0;
	for(i=-1;i<9;i++)
	{
		a[(i+1)*(n+1)] = i;
	}
	for(i=1;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
