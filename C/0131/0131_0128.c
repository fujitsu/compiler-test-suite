#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10],b[10]={
		1,2,4,8,16,32,64,128,256,512	};
	int  i ;
	for(i=0;i<10;i++)
	{
		a[i] = b[i] | 100 ;
		a[i] = b[i] & 1000 ;
		a[i] = b[i] ^ a[i] ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
