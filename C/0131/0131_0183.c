#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	static struct tag
	{
		unsigned int bit : 4 ;
	} a[10] ;
	struct tag *p ;
	int i,b[10]={
		0,0,0,0,0,0,0,0,0,0	};
	p = &a[0] ;
	for(i=0;i<10;i++)
	{
		(p+i)->bit = i ;
		if((p+i)->bit != 2)
		{
			b[i] = (p+i)->bit ;
		}
	}
	for(i=0;i<10;i++)
	{
		printf("b[%d] => %d \n",i,b[i]) ;
	}
	exit (0);
}
