#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j=11,a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	for(i=5;i>0;i--)
	{
		a[j-=2] = i ;
	}
	for(i=9;i>-1;i--)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
