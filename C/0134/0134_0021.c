#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long int n,long int m);

int main()
{
	sub(9,10);
	exit (0);
}
int sub(long int n,long int m)
{
	static int a[10],i;
	for(i=9;i>-1;i=i-(n+1)/m)
	{
		a[i] = n * m;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
}
