#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int j);

int main()
{
	int i,a[10],FUNC() ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
		a[i] = func(i) ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
int func(j)
int j ;
{
	int i,sum=0 ;
	for(i=0;i<j;i++)
	{
		sum += i ;
	}
	return sum ;
}
