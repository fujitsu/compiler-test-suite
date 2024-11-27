#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	long int a[10],i ;
	for(i=0;i<10;
	    a[i] = i,
	    i++) ;
	for(i=0;i<10;i++) printf(" a[%d] => %d \n",i,a[i]);
	exit (0);
}
