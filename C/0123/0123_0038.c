#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	long int i,j;
	float a[10];
	float b[10][10];
	for(i=0;i<10;i++)
	{
		a[i] = i;
		for(j=0;j<10;j++)
		{
			if(a[i] == j)
			{
				b[i][j] = a[i];
			}
			else
			{
				b[i][j] = a[i] * 2;
			}
			b[i][j] = b[i][j] * j;
		}
	}
	for(i=0;i<10;i++)
		for(j=0;j<10;j++) printf("b[%ld][%ld] => %f \n",i,j,b[i][j]);
	exit (0);
}
