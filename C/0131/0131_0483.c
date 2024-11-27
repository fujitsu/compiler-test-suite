#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10];
	for(i=0;i<=9;)
	{
		a[i] = i ;
		i++;
	}
	for(i=0;i<=9;i++){
		printf(" %d \n",a[i]);
	}
	exit (0);
}
