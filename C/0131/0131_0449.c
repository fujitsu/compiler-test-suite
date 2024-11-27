#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[41];
	for(i=40;i>0;i/=2)
	{
		a[i] = i ;
	}
	for(i=40;i>0;i/=2){
		printf(" %d \n",a[i]);
	}
	exit (0);
}
