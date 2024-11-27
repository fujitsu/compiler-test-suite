#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=9,a[11];
	for(++i;i>=0;i--)
	{
		a[i] = i + 1 ;
	}
	for(i=10;i>=0;i--){
		printf(" a[%d] => %d \n",i,a[i]);
	}
	exit (0);
}
