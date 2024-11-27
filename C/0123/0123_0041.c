#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	long int i,j;
	double 	a[5][5]={
		1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,0.1,
		                     1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,0.2,
		                     1.2,2.3,3.4,4.5,5.6	};
	for(i=0;i<5;i++)
	{
		for(j=0;j<5;j++)
		{
			a[j][i] = a[j][i] / 0.33;
		}
	}
	for(i=0;i<5;i++)
		for(j=0;j<5;j++) printf("a[%ld][%ld] => %g \n",i,j,a[i][j]);
	exit (0);
}
