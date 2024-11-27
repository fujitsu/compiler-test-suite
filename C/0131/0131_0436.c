#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[21];
	for(i=0;i<=20;i+=2*2)
	{
		a[i] = i ;
	}
	for(i=0;i<=20;i+=4){
		printf(" %d \n",a[i]);
	}
	exit (0);
}
