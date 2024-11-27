#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j=20,a[20]={
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0	};
	for(i=2;i>0;i--)
	{
		a[j/=2] = i ;
	}
	for(i=19;i>=0;i--)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
