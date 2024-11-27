#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int n=-3,i,a[11] ;
	for(i=0;i<10;i=i-1-1-n)
	{
		a[i] = i ;
		a[i+1] = a[i] * i ;
	}
	for(i=0;i<10;i++) printf(" a[%d] => %d \n",i,a[i]);
	exit (0);
}
