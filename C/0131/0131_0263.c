#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=10;
	int a[10];
	for(i=-n;i<0;i++)
	{
		a[-i-1]=i;
	}
	for(i=0;i<10;i++)
	{
		printf("%d \n",a[i]);
	}
	exit (0);
}
