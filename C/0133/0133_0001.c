#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int s1001(double a[],long int n,long int l,long int *k);

int main()
{
	double a[100] ;
	long int i,k ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
	}
	s1001(a,10,1,&k) ;
	for(i=0;i<10;i++) printf("a[%2ld] => %15.7e\n",i,a[i]) ;
	exit (0);
}

int s1001(double a[],long int n,long int l,long int *k)
{
	long int i ;
	*k = 10 ;
	if (l == 1)
	{
		for(i=0;i<n;i++)
		{
			a[i] = a[i] * 2 ;
		}
	}
	else
	{
		for(i=0;i<n;i++)
		{
			a[i] = 0.0 ;
		}
	}
	l = 10 ;
	return 0;
}
