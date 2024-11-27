#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	long int a[10]={
		1,2,3,4,5,6,7,8,9,10	},
	n=1,i;
	for(i=0;i<9;i++)
	{
		a[(i+1)*n] = i;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
