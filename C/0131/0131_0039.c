#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int a[]);

int main (void)
{
	int a[10] ;
	func(a) ;
	printf("%d\n",a[1]) ;
	exit (0);
}
int func(int a[])
{
	int i ;
	for (i=0;i<10;i++)
	{
		a[i] = i ;
	}
}
