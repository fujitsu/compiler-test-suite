#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[21];
	for(i=0;i<=20;i=i+1+1)
	{
		a[i] = i ;
	}
	for(i=0;i<=20;i=i+2){
		printf(" a[%d] => %d \n",i,a[i]);
	}
	exit (0);
}
