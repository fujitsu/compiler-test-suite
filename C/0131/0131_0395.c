#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=5,n=3,j=0,a[10];
	for(i+=n+1;i>2;i--)
	{
		a[j] = i + 1 ;
		j++;
	}
	for(j=0;j<7;j++){
		printf(" a[%d] => %d \n",j,a[j]);
	}
	exit (0);
}
