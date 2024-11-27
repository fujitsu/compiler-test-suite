#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long int ax[3][2]);

int main()
{
	int      i,j;
	long int a[3][2];
	for (i=0;i<3;i++)
	{
		for (j=0;j<2;j++)
		{
			a[i][j]=0;
		}
	}
	sub(a);
	exit (0);
}
int sub(ax)
long int ax[3][2];
{
	int      i,j;
	for (i=0 ; i<3 ; i++)
	{
		for (j=0 ; j<2 ; j++)
		{
			ax[i][j]=10+i;
			printf("ax[%d][%d]=%ld \n",i,j,ax[i][j]);
		}
	}
}
