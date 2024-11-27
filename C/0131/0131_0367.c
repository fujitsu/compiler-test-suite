#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=-2,a[10];
	for(i=n;i<5;i++)
	{
		a[i+2] = i ;
	}
	for(i=n;i<5;i++){
		printf(" a[%d] => %d \n",i,a[i+2]) ;
	}
	exit (0);
}
