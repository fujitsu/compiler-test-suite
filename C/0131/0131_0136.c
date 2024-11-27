#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	char a[10],b[10]="abcdefghij" ;
	unsigned char c[10],d[10]="abcdefghij" ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = b[i] ;
		c[i] = d[i] ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %c  c[%d] => %c \n",i,a[i],i,c[i]) ;
	}
	exit (0);
}
