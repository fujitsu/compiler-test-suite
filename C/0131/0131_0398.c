#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=10,n=2,a[10];
	for(i-=n*2;i>0;i--)
	{
		a[i] = i + 1 ;
	}
	for(i=6;i>0;i--){
		printf(" a[%d] => %d \n",i,a[i]);
	}
	exit (0);
}
