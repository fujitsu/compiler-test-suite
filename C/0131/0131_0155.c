#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int n);

int a[10]={
	0,0,0,0,0,0,0,0,0,0};
int main()
{
	int i ;
	func(2) ;
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
int func(n)
int n ;
{
	int i ;
	for(i=0;i<n;i++)
	{
		a[i] = i ;
		a[i] = a[i] + i ;
	}
}
