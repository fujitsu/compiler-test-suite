#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include "000.h"
int sub(long int ax[5][10]);
int main()                         
{
	long int a[5][10];
	int      i,j;
	for (i=0 ; i<5 ; i++)
	{
		for (j=0 ; j<10 ; j++)
		{
			a[i][j] = 10;               
		}
	}
	sub(a);
	exit (0);
}
int sub(ax)                         
long int ax[5][10];
{
	int      i,j;
	long int sum;
	sum=0;
	for (i=0 ; i<5 ; i++)
	{
		for (j=0 ; j<10 ; j++)
		{
			sum += ax[i][j];            
		}
	}
	printf("SUM=%ld \n",sum);       
}                                   
