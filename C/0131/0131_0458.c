#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[20];
	for(i=4;i<=20;i+=2)
	{
		a[i-4/2] = i ;
	}
	for(i=2;i<=18;i+=2)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
