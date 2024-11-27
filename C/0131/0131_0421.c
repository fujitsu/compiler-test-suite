#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=1,a[10];
	for(i=8;i>2+n;i--)
	{
		a[i] = i ;
	}
	for(i=8;i>3;i--){
		printf(" %d \n",a[i]);
	}
	exit (0);
}
