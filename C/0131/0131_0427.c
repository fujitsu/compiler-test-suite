#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=5,a[13];
	for(i=0;i<=++n;i+=2)
	{
		a[i] = i ;
	}
	for(i=0;i<10;i+=2){
		printf(" %d \n",a[i]);
	}
	exit (0);
}
