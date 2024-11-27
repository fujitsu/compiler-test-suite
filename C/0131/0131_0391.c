#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=2,a[20];
	for(i+=2*3;i<15;i++)
	{
		a[i] = i ;
	}
	for(i=8;i<15;i++){
		printf(" %d \n",a[i]);
	}
	exit (0);
}
