#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,n=2,k=0,a[10];
	for(i=8,j=8;i>-n,j>-n;i--,j--)
	{
		a[k] = i ;
		k++;
	}
	for(k=0;k<10;k++){
		printf(" a[%d] => %d \n",k,a[k]);
	}
	exit (0);
}
