#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j=1,a[10+1];
	for(i=1;i<10;++i)
	{
		a[++j] = i;
	}
	for(i=2;i<10;i+=2)
	{
		printf("a[%d] = %d \n",i,a[i]);
	}
	exit (0);
}
