#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,a[11];
	for(i=0,j=0;i==j;i++,j++)
	{
		a[i] = i + 1 ;
		if(i==10)break;
		printf(" a[%d] => %d \n",i,a[i]);
	}
	exit (0);
}
