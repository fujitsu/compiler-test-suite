#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int n);

int main()
{
	int i,n=-1,a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	for(i=0;i<10;i++)
	{
		if(i == 9) break ;
		a[i] = n ;
		n++ ;
		func(n) ;
		a[n] = a[n] + i ;
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
	n = 1 ;
}
