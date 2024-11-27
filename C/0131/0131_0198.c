#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a=0,b;
	int x[10],y[10] ;
	for(;;)
		if(a==0)
			break ;
	for(i=0;i<10;i++)
	{
		x[i] = 2 ;
		y[i] = i ;
	}
	for(i=2;i<9;i++)
	{
		x[i] = x[i-2] + y[i] ;
	}
	a = 0 ;
	b = -1 ;
	for(i=0;i<10;i++)
	{
		x[i] = x[i] + x[i] ;
		if(x[i] < a)
		{
			a = x[i] ;
			b = i ;
		}
	}
	for(i=0;i<10;i++)
	{
		printf("x[%d] = %d\n",i,x[i]) ;
		printf("y[%d] = %d\n",i,y[i]) ;
	}
	exit (0);
}
