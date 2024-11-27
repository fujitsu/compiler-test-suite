#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=10,a[11]={
		0,0,0,0,0,0,0,0,0,0,0	};
	for(i=n--;i>0;--i)
	{
		a[i] = i ;
	}
	for(i=9;i>=0;--i)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
