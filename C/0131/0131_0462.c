#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j=9,a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	for(i=9;i>0;i--)
	{
		a[--j] = i ;
	}
	for(i=9;i>=0;i--)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
