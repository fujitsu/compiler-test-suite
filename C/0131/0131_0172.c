#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10],i,n=-32767 ;
	unsigned int b[10],m=32768 ;
	for(i=0;i<10;i++)
	{
		a[i] = n >> 2 ;
		b[i] = m >> 2 ;
		n++ ;
		m-- ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d   b[%d] => %d \n",i,a[i],i,b[i]) ;
	}
	exit (0);
}
