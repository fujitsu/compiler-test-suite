#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10],i,n=10 ;
	unsigned int b[10]={
		10,20,30,40,50,60,70,80,90,100	};
	for(i=0;i<10;i++)
	{
		a[i] = n >> 2 ;
		b[i] = b[i] >> 2 ;
		n++ ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d   b[%d] => %d \n",i,a[i],i,b[i]) ;
	}
	exit (0);
}
