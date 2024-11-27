#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=9,a[10];
	for(i=2;i<n-1;i++)
	{
		a[i] = i ;
	}
	for(i=2;i<8;i++){
		printf(" %d \n",a[i]);
	}
	exit (0);
}
