#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10];
	for(i=5;i<=3*3;i++)
	{
		a[i] = i ;
	}
	for(i=5;i<10;i++){
		printf(" %d \n",a[i]);
	}
	exit (0);
}
