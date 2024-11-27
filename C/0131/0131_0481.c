#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=1,a[10];
	for(i=4-++n;i<=8;i++)
	{
		a[i] = i + 1 ;
	}
	for(i=2;i<=8;i++)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
