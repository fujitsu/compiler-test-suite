#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long int n,long int m);

int main()
{
	sub(1,1);
	exit (0);
}
int sub(long int n,long int m)
{
	long int a[5][5],i,j;
	for(i=-1;i<4;i++)
		for(j=-1;j<4;j++)
		{
			a[(i+1)*n][(j+1)*m] = i * j;
		}
	for(j=0;j<5;j++)
		for(i=0;i<5;i++)
		{
			printf("a[%d][%ld] => %d \n",i,j,a[i][j]) ;
		}
}
