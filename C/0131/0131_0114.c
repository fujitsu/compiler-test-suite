#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=-1,a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	for(i=0;i<10;i++)
	{
		if(i == 9) break ;
		n++ ;
		a[n] = i ;
		a[n] = a[n] + i ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
