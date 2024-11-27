#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int a);

int main()
{
	int a[10],b[10]={
		1,2,4,8,16,32,64,128,256,512	};
	int  i ;
	for(i=0;i<10;i++)
	{
		a[i] = func(b[i]) ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
int func(a)
int a ;
{
	int i ;
	for(i=0;i<10;i++)
	{
		a = a + i ;
	}
	return a ;
}
