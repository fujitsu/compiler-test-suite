#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int n;
	int i;
	for(n=0,i=0;i<10;i++)
	{
		a[n=1] = i;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
