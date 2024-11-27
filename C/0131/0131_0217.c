#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	long int a[10],i,*p,n=1 ;
	p = a ;
	for(i=0;i<10;i++)
	{
		*(p + i) = i ;
		*(p - n + i + 1) = *(p + i) + i ;
	}
	for(i=0;i<10;i++) printf(" a[%d] => %d \n",i,a[i]);
	exit (0);
}
