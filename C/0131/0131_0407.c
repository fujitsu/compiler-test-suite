#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=10,a[11];
	for(i=7;i<=n;i++)
	{
		a[i] = i + 1 ;
	}
	for(i=7;i<=10;i++){
		printf(" a[%d] => %d \n",i,a[i]);
	}
	exit (0);
}
