#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=0,b[10];
	int a[10]={
		0,1,2,3,4,5,6,7,8,9	};
	for(i;i<10;i++)
	{
		b[i] = a[i]+10;
	}
	for(i=0;i<10;i++)
	{
		printf("b[%d] = %ld \n",i,b[i]);
	}
	exit (0);
}
