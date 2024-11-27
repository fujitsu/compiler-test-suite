#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	long int i,n=10 ;
	long int a[10] ;
	for(i=0;i<n;i++)
	{
		a[i] = i ;
		a[i] = a[i] - i * 2 ;
	}
	for(i=0;i<n;i++)
	{
		printf("a => %ld\n",a[i]) ;
	}
	exit (0);
}
