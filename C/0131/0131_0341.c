#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j;
	long int a[10];
	for(i=j=0;i<10;i=i+1)
	{
		a[i]=10;
		printf("*** i = %ld ***\n",a[i]);
	}
	exit (0);
}
