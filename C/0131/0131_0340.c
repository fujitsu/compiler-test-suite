#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j;
	int a[10];
	for(i=j=0;i<10;i=i+1)
	{
		a[i]=i;
		printf("*** a[%d] = %d ***\n",i,a[i]);
	}
	exit (0);
}
