#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=-1,a[10];
	int j=-2;
	for(i;i<9;i++)
	{
		a[i+1]=j++;
	}
	for(i=0;i<=9;i++)
	{
		printf(" a[%d] = %d \n",i,a[i]);
	}
	exit (0);
}
