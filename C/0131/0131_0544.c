#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=0,a[10];
	for(i==0;i<9;++i)
	{
		printf(" %d \n",i) ;
		a[i] = i ;
	}
	for(i=0;i<9;++i)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
