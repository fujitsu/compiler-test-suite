#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10];
	for(i=0;i<=5-2;i++)
	{
		a[i] = i ;
	}
	for(i=0;i<=3;i++){
		printf(" a[%d] => %d \n",i,a[i]);
	}
	exit (0);
}
