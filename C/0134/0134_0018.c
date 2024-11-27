#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long int n,long int m);

int main()
{
	sub(2,5);
	exit (0);
}
int sub(long int n,long int m)
{
	static int a[14],i;
	for(i=0;i<(n+m)*2;i++)
	{
		a[i] = i;
	}
	for(i=0;i<14;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
}
