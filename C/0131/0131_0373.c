#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10];
	for(i=10/2;i>0;i--)
	{
		a[i] = i + 1 ;
	}
	printf(" a[5:1] => %d %d %d %d %d \n",a[5],a[4],a[3],a[2],a[1]) ;
	exit (0);
}
