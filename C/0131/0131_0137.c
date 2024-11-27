#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(char a);

int main()
{
	char a[10],b[10]="abcdefghij" ;
	unsigned char c[10] ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = b[i] ;
		c[i] = func(a[i]) ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %c  c[%d] => %c \n",i,a[i],i,c[i]) ;
	}
	exit (0);
}
int func(a)
char a ;
{
	return a ;
}
