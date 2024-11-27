#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	long int i,j;
	float a[10]={
		1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0	},
	s,b[10][10];
	for(i=0;i<10;i++)
	{
		s = a[i];
		for(j=0;j<10;j++)
		{
			b[i][j] = s;
			s = s + b[i][j];
		}
		a[i] = s;
	}
	for(i=0;i<10;i++) printf("a[%ld] => %f\n",i,a[i]);
	exit (0);
}
