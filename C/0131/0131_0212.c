#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int n=13,i,a[10] ;
	for(i=0;i<n-1-2;i++)
	{
		a[i] = i ;
		a[i] = a[i] * i ;
	}
	for(i=0;i<10;i++) printf(" a[%d] => %d \n",i,a[i]);
	exit (0);
}
