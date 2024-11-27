#include <stdlib.h>
#include <stdio.h>
#include <math.h>

unsigned char a[10] ;
char b[10] ;
unsigned short int c[10] ;
short int d[10] ;
unsigned long int e[10] ;
long int f[10] ;
float g[10] ;
double h[10] ;
int main()
{
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = b[i] = i ;
		c[i] = d[i] = i * 2 ;
		e[i] = f[i] = i * 4 ;
		g[i] = i / 3 ;
		h[i] = i / 7 ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d  b[%d] => %d  c[%d] => %d  d[%d] => %d\n",
		    i,a[i],i,b[i],i,c[i],i,d[i]) ;
		printf("e[%d] => %d  f[%d] => %d  g[%d] => %f  h[%d] => %f\n",
		    i,e[i],i,f[i],i,g[i],i,h[i]) ;
	}
	exit (0);
}
