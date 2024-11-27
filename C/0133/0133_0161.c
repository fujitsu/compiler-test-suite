#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub(double a[],unsigned long int m[],long int n);
#define N 10

double b[10],c[10] ;
int main()
{
	double a[N] ;
	static unsigned long int m[N]={
				1,1,1,1,1,1,1,1,1,1		};
	sub(a,m,N) ;
	exit (0);
}
int sub(double a[],unsigned long int m[],long int n)
{
	long int i ;
	for(i=0;i<n;i++)
	{
		if (m[i] == 1)
		{
			a[i] = 1.0 ;
		}
		b[i] = i ;
		c[i] = b[i] ;
	}
	for(i=0;i<n;i++)
		printf("a[%ld] => %8.3f  b[%ld] => %8.3f  c[%ld] => %8.3f \n",
		    i,a[i],i,b[i],i,c[i]) ;
}
