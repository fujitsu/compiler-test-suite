#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=0,a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	for(i=n++;i<10;++i)
	{
		a[i] = i + 1 ;
	}
	for(i=0;i<10;i++)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
