#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include "000.h"
int fx1(long int *ax, long int *bx);
int main()
{
	long int a,b,i;
	for (i=1 ; i<=100 ; i++)
	{
		fx1(&a,&b);
		printf("<main>a+b=%ld\n",a+b);
	}
	exit (0);
}
int fx1(ax,bx)
long int *ax;
long int *bx;
{
	*ax=2;
	*bx=3;
}
 
