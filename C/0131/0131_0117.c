#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func();

int n ;
int main()
{
	int i,a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	n = 1 ;
	for(i=0;i<10;i+=n)
	{
		a[i] = i ;
		a[i] = a[i] + 1 ;
		func() ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
int func()
{
	n = 2 ;
}
