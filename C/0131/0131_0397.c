#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=1,j=0,n=6,a[11];
	for(i+=n/3;i<=10;i++)
	{
		a[j] = i ;
		j++;
	}
	for(j=0;j<8;j++){
		printf(" a[%d] => %d \n",j,a[j]);
	}
	exit (0);
}
