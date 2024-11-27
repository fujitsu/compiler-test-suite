#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10];
	for(i=5;i>=2-1;i--)
	{
		a[i] = i + 1 ;
	}
	printf(" a[5:2] => %d %d %d %d \n",a[5],a[4],a[3],a[2]);
	exit (0);
}
