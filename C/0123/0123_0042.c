#include <math.h>
#include <stdlib.h>
#include <stdio.h>
static double da10[2][2]={ 
	0.1,0.2,0.3,0.4 };
int main()
{
	long int IT2=-10;
	long int i,j;
	for(j=IT2; j<=-9; j++)
	{
		for(i=IT2; i<=-9; i++)
		{
			da10[i+10][j+10] = da10[i+10][j+10]
			    + da10[j+10][i+IT2+20];
		}
	}
	
	printf("AAA\n") ;
	for(j=IT2; j<=-9; j++)
	{
		for(i=IT2; i<=-9; i++)
		{
			printf("da10(%d,%d) = %g\n", i+10, j+10, da10[i+10][j+10]);
		}
	}
	exit (0);
}

