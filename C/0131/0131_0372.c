#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10];
	for(i=2*3;i<10;i++)
	{
		a[i] = i ;
	}
	printf(" a[6:9] => %d %d %d %d \n",a[6],a[7],a[8],a[9]);
	exit (0);
}
