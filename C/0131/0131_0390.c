#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=4,j=0,a[10];
	for(i-=2+3;i<5;i++)
	{
		a[j] = i + 1 ;
		j++;
	}
	for(j=0;j<6;j++){
		printf(" a[%d] => %d \n",j,a[j]);
	}
	exit (0);
}
