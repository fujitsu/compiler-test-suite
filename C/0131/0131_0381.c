#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=5,a[10];
	for(i+=2;i>0;i--)
	{
		a[i] = i ;
	}
	for(i=7;i>0;i--)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
