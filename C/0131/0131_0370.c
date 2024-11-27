#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=2,j=0,a[10];
	for(i=-n;i<5;i++)
	{
		a[j] = i ;
		j++;
	}
	for(j=0;j<7;j++){
		printf(" a[%d] => %d \n",j,a[j]);
	}
	exit (0);
}
