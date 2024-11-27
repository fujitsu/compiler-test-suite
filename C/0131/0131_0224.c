#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int sub(long int ax[3][3]);
int main()              
{
	long int a[3][3];
	int      i,j;
	sub(a);
	for(i=0;i<3;i++)    
	{
		for(j=0;j<3;j++)
		{
			printf ("Result A[%d][%d]=%ld \n",i,j, a[i][j]);
		}
	}
	exit (0);
}
int sub(long int ax[3][3])             
{
	int      i,j;
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			ax[i][j] = 10;
			ax[i][j] -= 5;
			ax[i][j] *= 2;
			ax[i][j] /= 5;
			ax[i][j] %= 2;
		}
	}
	return 0;
}
