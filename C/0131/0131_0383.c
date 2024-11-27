#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=4,j=0,a[12];
	for(i*=3;i>5;--i)
	{
		a[j] = i ;
		j++;
	}
	for(j=0;j<7;j++)
	{
		printf(" a[%d] => %d \n",j,a[j]) ;
	}
	exit (0);
}
