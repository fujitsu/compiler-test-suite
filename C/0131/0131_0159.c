#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10] ;
	for(i=0;i<10;i++)
	{
		a[i] = i;
		printf("a[%d] => %d \n",i,a[i]);
	}
	exit (0);
}
