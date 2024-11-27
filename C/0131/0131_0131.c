#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int inc);

int main()
{
	int  inc=5 ;
	func(inc) ;
	exit (0);
}
int func(inc)
int inc ;
{
	int a[10],b[10]={
		1,2,3,4,5,6,7,8,9,10	};
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = b[i] << inc ;
		b[i] = a[i] >> inc ;
	}
	for(i=0;i<10;i++)
	{
		printf("b[%d] => %d \n",i,b[i]) ;
	}
}
