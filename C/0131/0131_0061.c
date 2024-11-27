#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10] ;
	int i,j,k,func() ;
	for(j=func(),i=0,k=func();i<10;i++)
	{
		a[i] = i * j * k ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d\n",i,a[i]) ;
	}
	exit (0);
}
int func()
{
	return 0;
}
