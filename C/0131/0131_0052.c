#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10] ;
	int func(),i ;
	for(i=func();i<10;i++)
	{
		a[i] = i ;
		printf("a[%d] => %d\n",i,a[i]) ;
	}
	exit (0);
}
int func()
{
	return 0 ;
}
