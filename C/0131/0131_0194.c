#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	static struct tag
	{
		unsigned int a:3 ;
		unsigned int b:4 ;
	} x[10] ;
	int i ;
	for(i=0;i<10;i++)
	{
		x[i].a = i ;
		x[i].b = i ;
		if(x[i].a == 1)
		{
			x[i].a = 7 - i ;
			x[i].b = i ;
		}
	}
	for(i=0;i<10;i++)
	{
		printf("x[%d].a => %d   x[%d].b => %d\n",i,x[i].a,i,x[i].b) ;
	}
	exit (0);
}
