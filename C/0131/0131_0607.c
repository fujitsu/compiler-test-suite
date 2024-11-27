#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i,n=8;
	for(i=0;i!=n+1;i++)
	{
		a[i] = i;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
