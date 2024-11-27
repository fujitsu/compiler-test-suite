#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int misub(float a[6],float b[6][6]);

int main()
{
	long int i,j;
	float a[6],b[6][6];
	misub(a,b);
	for(i=0;i<6;i+=2)
		for(j=0;j<6;j++) printf("b[%ld][%ld] => %f \n",i,j,b[i][j]);
	exit (0);
}
int misub(float a[6],float b[6][6])
{
	long int i,j;
	for(i=0;i<6;i+=2)
	{
		a[i] = i;
		for(j=0;j<6;j++)
		{
			b[i][j] = a[i];
			b[i][j] = b[i][j] * j;
		}
	}
}
