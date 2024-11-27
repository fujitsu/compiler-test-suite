#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=10,j=0,a[20];
	for(i-=4/2;i>=0;i--)
	{
		a[j] = i ;
		j++;
	}
	for(j=0;j<=8;j++)
	{
		printf(" a[%d] => %d \n",j,a[j]) ;
	}
	exit (0);
}
