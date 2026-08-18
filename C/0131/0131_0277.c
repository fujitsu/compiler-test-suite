#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j=10,a[10];
	for(i=--j;i>0;--i)
	{
		a[--j]=i;
	}
	for(i=9;i>1;--i)
	{
                int idx = --i;
                printf("a[%d] = %d \n",idx, a[idx]);
	}
	exit (0);
}
