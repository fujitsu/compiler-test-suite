#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=-5;
	int a[10];
	for(i=n;i<0;i++)
	{
		a[-i]=i;
	}
	for(i=1;i<=5;i++)
	{
		printf("a[%d] = %d \n",i,a[i]);
	}
	exit (0);
}
