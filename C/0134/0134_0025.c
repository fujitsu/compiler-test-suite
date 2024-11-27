#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long int b,long int c,long int d,long int e,long int f,long int g);

int main()
{
	sub(2,1,1,3,1,1);
	exit (0);
}
int sub(long int b,long int c,long int d,long int e,long int f,long int g)
{
	long int a[5][5],i,j;
	for(i=b*(c+d)/(e*(f+g));i<5;i++)
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
