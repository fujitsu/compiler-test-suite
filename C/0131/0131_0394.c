#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=15,j=0,a[20];
	for(i/=2+1;i>=0;i--)
	{
		a[j] = i ;
		j++;
	}
	for(j=0;j<=5;j++){
		printf(" a[%d] => %d \n",j,a[j]);
	}
	exit (0);
}
