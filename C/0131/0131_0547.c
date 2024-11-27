#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,a[10];
	for(i=0,j=i;i<10;i++)
	{
		a[i] = i + j ;
	}
	for(i=0;i<10;i++){
		printf(" a[%d] => %d \n",i,a[i]);
	}
	exit (0);
}
