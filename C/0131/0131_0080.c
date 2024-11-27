#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	unsigned int a[10] ;
	int b[10] ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
		if(a[i] <= i)
		{
			a[i] = a[i] * i ;
		}
		b[i] = i ;
		if(b[i] <= i)
		{
			b[i] = b[i] * i ;
		}
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %5d  b[%d] => %5d\n",i,a[i],i,b[i]) ;
	}
	exit (0);
}
