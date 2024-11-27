#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int n=3,i,a[10] ;
	for(i=n-1-2;i<10;i++)
	{
		a[i] = i ;
		a[i] = a[i] * i ;
	}
	for(i=0;i<10;i++) printf(" a[%d] => %d \n",i,a[i]);
	exit (0);
}
