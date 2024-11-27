#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=8,a[10];
	for(i=8;i==n--;i--)
	{
		a[i] = i ;
		if(n==1)break;
	}
	for(i=8;i>=2;i--){
		printf(" %d \n",a[i]);
	}
	exit (0);
}
