#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10];
	for(i=3+2;i<10;i++)
	{
		a[i] = i + 1 ;
	}
	printf(" a[5:9] => %d %d %d %d %d\n",a[5],a[6],a[7],a[8],a[9]) ;
	exit (0);
}
