#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	unsigned int a[10],b[10],c[10] ;
	int d[10],e[10],f[10] ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = d[i] = i ;
		b[i] = e[i] = i * i ;
		c[i] = f[i] = i * i * i ;
	}
	for(i=0;i<10;i++)
	{
		a[i] = b[i] ^ c[i] ;
		a[i] = d[i] ^ a[i] ;
		b[i] = d[i] ^ e[i] ;
		d[i] = e[i] ^ f[i] ;
		d[i] = a[i] ^ d[i] ;
		e[i] = a[i] ^ b[i] ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %5d  b[%d] => %5d\n",i,a[i],i,b[i]) ;
		printf("d[%d] => %5d  e[%d] => %5d\n",i,a[i],i,b[i]) ;
	}
	exit (0);
}
