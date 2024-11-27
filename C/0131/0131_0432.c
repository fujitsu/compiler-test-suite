#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=2,a[20];
	for(i=0;i<20;i+=n)
	{
		a[i] = i ;
	}
	for(i=0;i<20;i+=2){
		printf(" %d \n",a[i]);
	}
	exit (0);
}
