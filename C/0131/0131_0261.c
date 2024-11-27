#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=0,j=10,a[11],b[11];
	for(i=0,j=10;i!=j;i++,j--)
	{
		a[i]=i;
		b[j]=j;
	}
	for(i=0,j=10;i<5,j>5;i++,j--)
	{
		printf("%d %d \n",a[i],b[j]);
	}
	exit (0);
}
