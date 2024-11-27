#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(float ax[5][10]);

int main()                              
{
	float    a[5][10];
	int      i,j;
	for (i=0 ; i<5 ; i++)
	{
		for (j=0 ; j<10 ; j++)
		{
			a[i][j] = 13.73;                
		}
	}
	sub(a);
	exit (0);
}
int sub(ax)                             
float    ax[5][10];
{
	float    sum=0.0;
	int      i,j;
	for (i=0 ; i<5 ; i++)
	{
		for (j=0 ; j<10 ; j++)
		{
			sum += ax[i][j];                 
		}
	}
	printf("SUM=%f \n",sum);            
}                                   
