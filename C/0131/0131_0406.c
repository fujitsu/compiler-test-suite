#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=1,a[10];
	for(i=5;i>n;i--)
	{
		a[i] = i + 1 ;
	}
	for(i=5;i>1;i--){
		printf(" a[%d] => %d \n",i,a[i]);
	}
	exit (0);
}
