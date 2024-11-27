#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int a1[10], int a2[10]);

int main (void)
{
	int a[10] ;
	func(a,a) ;
	printf("%d\n",a[1]) ;
	exit (0);
}
int func(int a1[10], int a2[10])
{
	int i ;
	for (i=0;i<10;i++)
	{
		a1[i] = 0 ;
		a2[i] = i ;
	}
}
