#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long int n,long int m,long int l);

int main()
{
	sub(0,0,0);
	exit (0);
}
int sub(long int n,long int m,long int l)
{
	static int a[10],i;
	for(i=(m+n)*l;i<10;i++)
	{
		a[i] = i;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
}
