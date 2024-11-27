#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,m1=1,n=1;
	int a[10]={
		5,0,0,0,0,0,0,0,0,0	};
	for(i=2;i<10;i++)
	{
		a[i-(m1--)-n] = i ;
		n++ ;
	}
	for(i=0;i<10;i++)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
