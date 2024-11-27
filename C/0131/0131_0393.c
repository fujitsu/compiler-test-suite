#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=2,j=0,a[10];
	for(i*=5-3;i<10;i++)
	{
		a[j] = i ;
		j++;
	}
	for(j=0;j<6;j++){
		printf(" a[%d] => %d \n",j,a[j]);
	}
	exit (0);
}
