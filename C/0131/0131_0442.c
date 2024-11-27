#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[11];
	for(i=0;i<=10;i=i+1)
	{
		a[i] = i + 1 ;
	}
	for(i=0;i<=10;i++){
		printf(" %d \n",a[i]);
	}
	exit (0);
}
