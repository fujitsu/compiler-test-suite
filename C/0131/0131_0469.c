#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j=1,a[20]={
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0	};
	for(i=0;i<4;i++)
	{
		a[j*=2] = i ;
	}
	for(i=0;i<20;i++)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
