#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int n);

int main()
{
	int i,a[10],n=1 ;
	for(i=0;i<10;i+=n)
	{
		a[i] = i ;
		a[i] = func(n) ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
int func(n)
int n ;
{
	int i,sum=0 ;
	for(i=0;i<10;i++)
	{
		sum += n + i ;
	}
	return sum ;
}
