#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=1,a[10];
	for(++i+2;i<10;i++)
	{
		a[i] = i + 1 ;
	}
	for(i=4;i<10;i++){
		printf(" a[%d] => %d \n",i,a[i]);
	}
	exit (0);
}
