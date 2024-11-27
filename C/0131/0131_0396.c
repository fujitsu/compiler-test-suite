#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=7,n=2,j=0,a[10];
	for(i-=3+n;i<10;i++)
	{
		a[j] = i + 1 ;
		j++;
	}
	for(j=0;j<8;j++){
		printf(" a[%d] => %d \n",j,a[j]);
	}
	exit (0);
}
