#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int n=2,i,a[10] ;
	for(i=0;i<10;i+++n-1-1)
	{
		a[i] = i ;
		a[i] = a[i] * i ;
	}
	for(i=0;i<10;i++) printf(" a[%d] => %d \n",i,a[i]);
	exit (0);
}
