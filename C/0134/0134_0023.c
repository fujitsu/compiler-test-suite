#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long int b,long int c,long int d,long int e);

int main()
{
	sub(2,1,1,5);
	exit (0);
}
int sub(long int b,long int c,long int d,long int e)
{
	long int a[5][5],i,j;
	for(i=b*(c+d)/e;i<5;i++)
		for(j=0;j<5;j++)
		{
			a[i][j] = i * j;
		}
	for(j=0;j<5;j++)
		for(i=0;i<5;i++)
		{
			printf("a[%d][%ld] => %d \n",i,j,a[i][j]) ;
		}
}
