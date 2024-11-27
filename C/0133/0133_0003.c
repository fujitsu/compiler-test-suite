#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int s1003(double a[],long int n,long int l);

int main()
{
	double a[20]={
		0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,
			              0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0	};
	long int i ;
	s1003(a,10,0) ;
	for(i=0;i<20;i++) printf("a[%2ld] => %10.3f\n",i,a[i]) ;
	exit (0);
}

int s1003(double a[],long int n,long int l)
{
	long int i ;
	for(i=0;i<n;i++)
	{
		a[i] = 10 ;
	}
	if (l > 0)
	{
		a[0] = 1 ;
	}
	else
	{
		a[0] = -1 ;
	}
	for(i=0;i<n;i++) printf("a[%ld] => %10.3f \n",i,a[i]) ;
	return 0;
}
