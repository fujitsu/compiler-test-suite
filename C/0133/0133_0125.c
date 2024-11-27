#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main()
{
	double a[100],b[100],c[100],z[100];
	long int i,n1 = 100;
	for(i=0;i<100;i++){
		a[i] = 0.1 ;
	}
	for(i=0;i<100;i++){
		b[i] = 0.2 ;
	}
	for(i=0;i<100;i++){
		c[i] = 0.3 ;
	}
	for(i=0;i<n1;i++)
	{
		a[i] = sin(a[i]) + 0.11 ;
	}
	for(i=0;i<n1;i++)
	{
		b[i] = sin(c[i]) + a[i] ;
	}
	for(i=0;i<n1;i++)
	{
		z[i] = b[i] - 0.11 ;
	}
	for(i=0;i<n1;i++)
	{
		printf("a[%ld] = %g , b[%ld] = %g , z[%ld] = %g\n",i,a[i],i,b[i],
		    i,z[i]);
	}
	exit (0);
}
