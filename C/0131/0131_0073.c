#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(unsigned int a[], unsigned int b[], unsigned int c[], int d[], int e[], int f[]);

int main (void)
{
	unsigned int a[10],b[10],c[10] ;
	int d[10],e[10],f[10] ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = b[i] = c[i] = i ;
		d[i] = e[i] = f[i] = i ;
	}
	func(a,b,c,d,e,f) ;
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d  b[%d] => %d\n",i,a[i],i,b[i]) ;
		printf("d[%d] => %d  e[%d] => %d\n",i,d[i],i,e[i]) ;
	}
	exit (0);
}
int func(unsigned int a[], unsigned int b[], unsigned int c[], int d[], int e[], int f[])
{
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = b[i] >= c[i] ;
		a[i] = d[i] >= a[i] ;
		b[i] = d[i] >= e[i] ;
		d[i] = e[i] >= f[i] ;
		d[i] = b[i] >= d[i] ;
		e[i] = b[i] >= c[i] ;
	}
}
