#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j=0,a[10];
	for(i=1;i>-6;i--)
	{
		a[j] = i + 1 ;
		j++;
	}
	for(j=0;j<7;j++){
		printf(" a[%d] => %d \n",j,a[j]);
	}
	exit (0);
}
