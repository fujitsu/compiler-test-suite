#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	char a[10],b[10]="abcdefghij" ;
	int  i ;
	for(i=0;i<10;i++)
	{
		a[i] = b[i] ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %c \n",i,a[i]) ;
	}
	exit (0);
}
