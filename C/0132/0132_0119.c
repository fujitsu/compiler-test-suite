#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	float a[10];
	int i,n;
	n=5;
	for(i=0;i<10;i++)
	{
		a[i]=i;
	}
	a[n]=a[n]+1;
	for(i=0;i<10;i++)
	{
		printf("%7.2f ",a[i]);
	}
	printf("\n");
	exit (0);
}
