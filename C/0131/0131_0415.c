#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10];
	for(i=0;i<2*3;i++)
	{
		a[i] = i + 1 ;
	}
	for(i=0;i<6;i++){
		printf(" a[%d] => %d \n",i,a[i]);
	}
	exit (0);
}
