#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int *p,i ;
	int val[10]={
		1,2,3,4,5,6,7,8,9,10	};
	p = &val[0] ;
	for(i=0;i<10;i+=4)
	{
		*p = i ;
		p = p + i ;
	}
	for(i=0;i<10;i++)
	{
		printf("val[%d] => %d \n",i,val[i]) ;
	}
	exit (0);
}
