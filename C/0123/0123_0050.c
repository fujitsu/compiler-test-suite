#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int misub(float a[],float b[][5],float *s);

int main()
{
	long int i,j;
	float a[5]={
		1.0,2.0,3.0,4.0,5.0	},
	b[5][5],s;
	misub(a,b,&s);
	for(i=0;i<5;i++)
		for(j=0;j<5;j++) printf("b[%ld][%ld] => %f \n",i,j,b[i][j]);
	exit (0);
}
int misub(float a[],float b[][5],float *s)
{
	long int i,j;
	for(i=0;i<5;i++)
	{
		*s = a[i];
		for(j=0;j<5;j++)
		{
			b[i][j] = *s;
			*s = *s + b[i][j];
		}
		a[i] = *s;
	}
}
